part of 'forget_password_cubit.dart';

@immutable
sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ChangeViewDone extends ForgetPasswordState {}

final class VerifyEmailLoading extends ForgetPasswordState {}

final class VerifyEmailSuccess extends ForgetPasswordState {
  final AuthModel authModel;

  VerifyEmailSuccess({required this.authModel});
}

final class VerifyEmailFailure extends ForgetPasswordState {
  final String errorMessage;

  VerifyEmailFailure({required this.errorMessage});
}

final class VerifyCodeLoading extends ForgetPasswordState {}

final class VerifyCodeSuccess extends ForgetPasswordState {
  final AuthModel authModel;

  VerifyCodeSuccess({required this.authModel});
}

final class VerifyCodeFailure extends ForgetPasswordState {
  final String errorMessage;

  VerifyCodeFailure({required this.errorMessage});
}

//ResetPassword
final class ResetPasswordLoading extends ForgetPasswordState {}

final class ResetPasswordSuccess extends ForgetPasswordState {
  final AuthModel authModel;

  ResetPasswordSuccess({required this.authModel});
}

final class ResetPasswordFailure extends ForgetPasswordState {
  final String errorMessage;

  ResetPasswordFailure({required this.errorMessage});
}
