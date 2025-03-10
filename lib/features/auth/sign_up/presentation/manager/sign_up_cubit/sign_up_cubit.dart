import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';

import '../../../../data/models/auth_model/auth_model.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit({required this.authRepoImplementation}) : super(SignUpInitial());
  final AuthRepoImplementation authRepoImplementation;

  TextEditingController signUpUserName = TextEditingController();
  TextEditingController signUpPhoneNumber = TextEditingController();
  TextEditingController signUpEmail = TextEditingController();
  TextEditingController signUpPassword = TextEditingController();
  TextEditingController signUpConfirmPassword = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey();

  signUp() async {
    emit(SignUpLoading());
    final response = await authRepoImplementation.signUp(
      name: signUpUserName.text,
      phone: signUpPhoneNumber.text,
      email: signUpEmail.text,
      password: signUpPassword.text,
    );
    response.fold(
        (errorMessage) => emit(SignUpFailure(errorMessage: errorMessage)),
        (authModel) => emit(SignUpSuccess(authModel: authModel)));
  }
}
