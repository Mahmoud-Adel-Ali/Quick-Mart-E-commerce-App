import 'package:dartz/dartz.dart';
import 'package:quick_mart_app/core/api/api_keys.dart';
import 'package:quick_mart_app/core/api/dio_consumer.dart';
import 'package:quick_mart_app/core/api/end_points.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/errors/error_model.dart';
import 'package:quick_mart_app/core/errors/exception.dart';
import 'package:quick_mart_app/core/errors/status_code_model.dart';
import 'package:quick_mart_app/core/services/services_locator.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo.dart';

import '../models/auth_model/auth_model.dart';

class AuthRepoImplementation extends AuthRepo {
  final DioConsumer dio;

  AuthRepoImplementation({required this.dio});
  @override
  Future<Either<String, AuthModel>> signUp({
    required String name,
    required String phone,
    required String email,
    required String password,
    String? image,
  }) async {
    try {
      final response = await dio.post(EndPoints.signUp, data: {
        ApiKeys.name: name,
        ApiKeys.phone: phone,
        ApiKeys.email: email,
        ApiKeys.password: password,
        ApiKeys.image: image,
      });
      // success
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.status) {
        getit<CacheHelper>().setString(ApiKeys.token, authModel.data!.token);
        getit<CacheHelper>().setInt(ApiKeys.id, authModel.data!.id);
        return Right(authModel);
      } else {
        return Left(authModel.message);
      }
    } on ServerException catch (e) {
      return Left(
        e.errorModel.message ?? 'There was an error , Please try again later',
      );
    }
  }

  @override
  Future<Either<String, AuthModel>> login(
      {required String email, required String password}) async {
    try {
      final response = await dio.post(EndPoints.login, data: {
        ApiKeys.email: email,
        ApiKeys.password: password,
      });
      // success
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.status) {
        getit<CacheHelper>().setString(ApiKeys.token, authModel.data!.token);
        getit<CacheHelper>().setInt(ApiKeys.id, authModel.data!.id);
        return Right(authModel);
      } else {
        return Left(authModel.message);
      }
    } on ServerException catch (e) {
      return Left(e.errorModel.message);
    }
  }

  @override
  Future<Either<String, dynamic>> sentNumForEmail(
      {required String email}) async {
    try {
      final response = await dio.post(EndPoints.sendNumForEmail(email));
      String message = response.toString();
      return Right('get code from this email $email \n $message');
    } on ServerException catch (e) {
      return Left(e.errorModel.message);
    }
  }

  @override
  Future<Either<String, AuthModel>> confirmNum({required String code}) async {
    try {
      final response = await dio.get(EndPoints.confirmNum(code));
      final StatusCodeModel statusCodeModel =
          StatusCodeModel.fromJson(response);

      if (statusCodeModel.statusCode != 200) {
        ErrorModel errorModel = ErrorModel.fromJson(response);
        return Left(errorModel.message);
      }
      AuthModel authModel = AuthModel.fromJson(response);
      return Right(authModel);
    } on ServerException catch (e) {
      return Left(e.errorModel.message.toString());
    }
  }

  @override
  Future<Either<String, dynamic>> changePassword(
      {required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      final response = await dio.post(EndPoints.changePassword, data: {
        ApiKeys.email: email,
        ApiKeys.password: password,
        ApiKeys.confirmPassword: confirmPassword,
      });
      return Right(response);
    } on ServerException catch (e) {
      return Left(e.errorModel.message);
    }
  }
}
