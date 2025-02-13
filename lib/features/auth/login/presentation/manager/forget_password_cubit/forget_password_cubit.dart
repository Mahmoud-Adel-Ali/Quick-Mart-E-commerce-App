import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';

import '../../../../data/models/auth_model/auth_model.dart';

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
  //VerifyCode
  String verifyCodeCode = '';
  setVerifyCode(String code) {
    verifyCodeCode = code;
  }

  // reset password
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey();
  TextEditingController resetPasswordTextField = TextEditingController();
  TextEditingController resetConfirmPassword = TextEditingController();

  verifyEmail() async {
    emit(VerifyEmailLoading());
    log('VerifyEmailLoading-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-');
    final response = await authRepoImplementation.verifyEmail(
      email: forgetPasswordEmail.text,
    );
    response.fold(
      (errorMessage) => emit(VerifyEmailFailure(errorMessage: errorMessage)),
      (authModel) => emit(VerifyEmailSuccess(authModel: authModel)),
    );
  }

  verifyCode() async {
    emit(VerifyCodeLoading());
    final response = await authRepoImplementation.verifyCode(
      email: forgetPasswordEmail.text,
      code: verifyCodeCode,
    );
    response.fold(
      (errorMessage) => emit(VerifyCodeFailure(errorMessage: errorMessage)),
      (authModel) => emit(VerifyCodeSuccess(authModel: authModel)),
    );
  }

  resetPassword() async {
    emit(ResetPasswordLoading());
    final response = await authRepoImplementation.resetPassword(
      email: forgetPasswordEmail.text,
      code: verifyCodeCode,
      password: resetPasswordTextField.text,
    );
    response.fold(
      (errorMessage) => emit(ResetPasswordFailure(errorMessage: errorMessage)),
      (authModel) => emit(ResetPasswordSuccess(authModel: authModel)),
    );
  }
}
