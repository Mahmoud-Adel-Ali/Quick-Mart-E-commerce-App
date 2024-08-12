import 'package:dartz/dartz.dart';
import 'package:quick_mart_app/core/api/api_keys.dart';
import 'package:quick_mart_app/core/api/dio_consumer.dart';
import 'package:quick_mart_app/core/api/end_points.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/errors/error_model.dart';
import 'package:quick_mart_app/core/errors/exception.dart';
import 'package:quick_mart_app/core/errors/status_code_model.dart';
import 'package:quick_mart_app/core/services/services_locator.dart';
import 'package:quick_mart_app/features/auth/data/models/sign_up_user/sign_up_model.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo.dart';



class AuthRepoImplementation extends AuthRepo {
  final DioConsumer dio;

  AuthRepoImplementation({required this.dio});
  @override
  Future<Either<String, SignUpModel>> signUp(
      {required String username,
      required String phoneNumber,
      required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      final response = await dio.post(EndPoints.signUp, data: {
        ApiKeys.username: username,
        ApiKeys.phoneNumber: phoneNumber,
        ApiKeys.email: email,
        ApiKeys.password: password,
        ApiKeys.confirmPassword: confirmPassword,
      });

      StatusCodeModel statusCodeModel = StatusCodeModel.fromJson(response);
      // cache helper
      if (statusCodeModel.statusCode != 200) {
        ErrorModel errorModel = ErrorModel.fromJson(response);
        if (errorModel.message == 'Email is Exist') {
          // Email is Exist
          return const Left('Email is Exist');
        } else if (errorModel.message == 'Faild' && errorModel.data != null) {
          // "message": "Faild",
          return Left(errorModel.data[0]);
        } else {
          return const Left('failure');
        }
      }
      // success
      SignUpModel signUpModel = SignUpModel.fromJson(response);
      getit<CacheHelper>().setString(ApiKeys.token, signUpModel.data!.token!);
      getit<CacheHelper>().setString(ApiKeys.id, signUpModel.data!.id!);
      return Right(signUpModel);
    } on ServerException catch (e) {
      return Left(e.errorModel.message ?? 'failure');
    }
  }
}
