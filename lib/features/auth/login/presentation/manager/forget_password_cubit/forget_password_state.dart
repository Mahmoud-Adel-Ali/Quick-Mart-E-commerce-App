part of 'forget_password_cubit.dart';

@immutable
sealed class ForgetPasswordState {}

final class ForgetPasswordInitial extends ForgetPasswordState {}

final class ChangeViewDone extends ForgetPasswordState {}

final class SendNumForEmailLoading extends ForgetPasswordState {}

final class SendNumForEmailSuccess extends ForgetPasswordState {
  final String message;

  SendNumForEmailSuccess({required this.message});
}

final class SendNumForEmailFailure extends ForgetPasswordState {
  final String errorMessage;

  SendNumForEmailFailure({required this.errorMessage});
}

final class ConfirmNumLoading extends ForgetPasswordState {}

final class ConfirmNumSuccess extends ForgetPasswordState {
  final AuthModel authModel;

  ConfirmNumSuccess({required this.authModel});
}

final class ConfirmNumFailure extends ForgetPasswordState {
  final String errorMessage;

  ConfirmNumFailure({required this.errorMessage});
}

//ChangePassword
final class ChangePasswordLoading extends ForgetPasswordState {}

final class ChangePasswordSuccess extends ForgetPasswordState {
  final String message;

  ChangePasswordSuccess({required this.message});
}

final class ChangePasswordFailure extends ForgetPasswordState {
  final String errorMessage;

  ChangePasswordFailure({required this.errorMessage});
}
