import 'package:dartz/dartz.dart';
import 'package:quick_mart_app/core/api/api_keys.dart';
import 'package:quick_mart_app/core/api/dio_consumer.dart';
import 'package:quick_mart_app/core/api/end_points.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/errors/exception.dart';
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
        cacheUserData(authModel);
        return Right(authModel);
      } else {
        return Left(authModel.message);
      }
    } on ServerException catch (e) {
      return Left(e.errorModel.message);
    }
  }

  void cacheUserData(AuthModel authModel) {
    // id
    getit<CacheHelper>().setInt(ApiKeys.id, authModel.data!.id);
    //name
    getit<CacheHelper>().setString(ApiKeys.name, authModel.data!.name);
    //email
    getit<CacheHelper>().setString(ApiKeys.email, authModel.data!.email);
    //phone
    getit<CacheHelper>().setString(ApiKeys.phone, authModel.data!.phone);
    //image
    getit<CacheHelper>().setString(ApiKeys.image, authModel.data!.image);
    //points
    getit<CacheHelper>()
        .setInt(ApiKeys.points, authModel.data!.points?.toInt() ?? 0);
    //credit
    getit<CacheHelper>()
        .setInt(ApiKeys.credit, authModel.data!.credit?.toInt() ?? 0);
    //token
    getit<CacheHelper>().setString(ApiKeys.token, authModel.data!.token);
  }

  @override
  Future<Either<String, AuthModel>> verifyEmail({required String email}) async {
    try {
      final response = await dio.post(
        EndPoints.verifyEmail,
        data: {
          ApiKeys.email: email,
        },
      );
      // TODO : Now , Server is unavailable , and i don't know the shape of response
      // TODO : 500 Internal Server Error :The server has encountered a situation it does not know how to handle.
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.status) {
        return Right(authModel);
      } else {
        return Left(authModel.message);
      }
    } on ServerException catch (e) {
      return Left(e.errorModel.message);
    }
  }

  @override
  Future<Either<String, AuthModel>> verifyCode({
    required String email,
    required String code,
  }) async {
    try {
      final response = await dio.post(
        EndPoints.verifyCode,
        queryParameters: {
          ApiKeys.email: email,
          ApiKeys.code: code,
        },
      );

      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.status) {
        return Right(authModel);
      } else {
        return Left(authModel.message);
      }
    } on ServerException catch (e) {
      return Left(e.errorModel.message.toString());
    }
  }

  @override
  Future<Either<String, AuthModel>> resetPassword({
    required String email,
    required String code,
    required String password,
  }) async {
    try {
      final response = await dio.post(EndPoints.resetPassword, data: {
        ApiKeys.email: email,
        ApiKeys.code: code,
        ApiKeys.password: password,
      });
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.status) {
        return Right(authModel);
      } else {
        return Left(authModel.message);
      }
    } on ServerException catch (e) {
      return Left(e.errorModel.message);
    }
  }

  @override
  Future<Either<String, AuthModel>> updateProfile(
      {required String name, String? image}) async {
    try {
      final response = await dio.put(
        EndPoints.updateProfile,
        data: {
          ApiKeys.name: name,
          ApiKeys.image: image,
          ApiKeys.phone: getit<CacheHelper>().getString(ApiKeys.phone),
          ApiKeys.email: getit<CacheHelper>().getString(ApiKeys.email),
        },
      );
      // success
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.status) {
        cacheUserData(authModel);
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
  Future<Either<String, AuthModel>> changePassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      final response = await dio.post(
        EndPoints.changePassword,
        data: {
          ApiKeys.currentPassword: currentPassword,
          ApiKeys.newPassword: newPassword,
        },
      );
      // success
      response['data'] = null;
      AuthModel authModel = AuthModel.fromJson(response);
      if (authModel.status) {
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
}
