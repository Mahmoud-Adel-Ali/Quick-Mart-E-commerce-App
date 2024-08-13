import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/auth/data/models/user_model/user_model.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.authRepoImplementation}) : super(LoginInitial());
  final AuthRepoImplementation authRepoImplementation;

  GlobalKey<FormState> loginFormKey = GlobalKey();
  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();

  login() async {
    emit(LoginLoading());
    final response = await authRepoImplementation.login(
      email: loginEmail.text,
      password: loginPassword.text,
    );
    response.fold(
        (errorMessage) => emit(LoginFailure(errorMessage: errorMessage)),
        (userModel) => emit(LoginSuccess(userModel: userModel)));
  }
}
