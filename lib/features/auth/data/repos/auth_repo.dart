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
  Future<Either<String, dynamic>> sentNumForEmail({
    required String email,
  });
  Future<Either<String, AuthModel>> confirmNum({required String code});

  Future<Either<String, dynamic>> changePassword({
    required String email,
    required String password,
    required String confirmPassword,
  });
}
