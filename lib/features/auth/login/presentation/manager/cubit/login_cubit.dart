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
  // forget password
  TextEditingController forgetPasswordEmail = TextEditingController();
  GlobalKey<FormState> forgetPasswordComfirmEmailFormkey = GlobalKey();
  //confirmNum
  String confirmNumCode = '';
  setConfirmNumCode(String code) {
    confirmNumCode = code;
  }

  // reset password
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey();
  TextEditingController resetPassword = TextEditingController();
  TextEditingController resetConfirmPassword = TextEditingController();

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

  sentNumForEmail() async {
    emit(SendNumForEmailLoading());
    final response = await authRepoImplementation.sentNumForEmail(
        email: forgetPasswordEmail.text);
    response.fold(
      (errorMessage) =>
          emit(SendNumForEmailFailure(errorMessage: errorMessage)),
      (message) => emit(SendNumForEmailSuccess(message: message)),
    );
  }

  confirmNum() async {
    emit(ConfirmNumLoading());
    final response =
        await authRepoImplementation.confirmNum(code: confirmNumCode);
    response.fold(
      (errorMessage) => emit(ConfirmNumFailure(errorMessage: errorMessage)),
      (userModel) => emit(ConfirmNumSuccess(userModel: userModel)),
    );
  }

  changePassword() async {
    emit(ChangePasswordLoading());
    final response = await authRepoImplementation.changePassword(
        email: forgetPasswordEmail.text,
        password: resetPassword.text,
        confirmPassword: resetConfirmPassword.text);
    response.fold(
      (errorMessage) => emit(ChangePasswordFailure(errorMessage: errorMessage)),
      (message) => emit(ChangePasswordSuccess(message: message)),
    );
  }
}
