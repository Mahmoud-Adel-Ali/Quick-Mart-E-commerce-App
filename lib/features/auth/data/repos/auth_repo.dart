import 'package:dartz/dartz.dart';
import 'package:quick_mart_app/features/auth/data/models/sign_up_user/sign_up_model.dart';

abstract class AuthRepo {
  Future<Either<String, SignUpModel>> signUp({
    required String username,
    required String phoneNumber,
    required String email,
    required String password,
    required String confirmPassword,
  });

}
