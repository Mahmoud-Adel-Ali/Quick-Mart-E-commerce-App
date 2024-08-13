import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/auth/data/models/user_model/user_model.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit({required this.authRepoImplementation})
      : super(ForgetPasswordInitial());

  final AuthRepoImplementation authRepoImplementation;
// current view of forget passworf
  int cuurentViewOfForgetPassword = 1;
  toSecondView() {
    cuurentViewOfForgetPassword = 2;
    emit(ChangeViewDone());
  }

  toFirstView() {
    cuurentViewOfForgetPassword = 1;
    emit(ChangeViewDone());
  }

  toThirdView() {
    cuurentViewOfForgetPassword = 3;
    emit(ChangeViewDone());
  }

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
