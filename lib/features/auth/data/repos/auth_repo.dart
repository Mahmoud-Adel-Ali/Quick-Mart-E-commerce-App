import 'package:dartz/dartz.dart';
import 'package:quick_mart_app/features/auth/data/models/user_model/user_model.dart';

abstract class AuthRepo {
  Future<Either<String, UserModel>> signUp({
    required String username,
    required String phoneNumber,
    required String email,
    required String password,
    required String confirmPassword,
  });
  Future<Either<String, UserModel>> login({
    required String email,
    required String password,
  });
}
