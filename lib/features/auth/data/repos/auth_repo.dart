import 'package:dartz/dartz.dart';

import '../models/auth_model/auth_model.dart';

abstract class AuthRepo {
  Future<Either<String, AuthModel>> signUp({
    required String name,
    required String phone,
    required String email,
    required String password,
    String? image,
  });
  Future<Either<String, AuthModel>> login({
    required String email,
    required String password,
  });
  Future<Either<String, AuthModel>> verifyEmail({
    required String email,
  });
  Future<Either<String, AuthModel>> verifyCode({
    required String email,
    required String code,
  });

  Future<Either<String, AuthModel>> resetPassword({
    required String email,
    required String code,
    required String password,
  });

  Future<Either<String, AuthModel>> updateProfile({
    required String name,
    String? image,
  });
}
