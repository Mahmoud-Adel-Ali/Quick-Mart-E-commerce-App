part of 'login_cubit.dart';

sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginSuccess extends LoginState {
  final UserModel userModel;

  LoginSuccess({required this.userModel});
}

final class LoginFailure extends LoginState {
  final String errorMessage;

  LoginFailure({required this.errorMessage});
}

final class SendNumForEmailLoading extends LoginState {}

final class SendNumForEmailSuccess extends LoginState {
  final String message;

  SendNumForEmailSuccess({required this.message});
}

final class SendNumForEmailFailure extends LoginState {
  final String errorMessage;

  SendNumForEmailFailure({required this.errorMessage});
}

final class ConfirmNumLoading extends LoginState {}

final class ConfirmNumSuccess extends LoginState {
  final UserModel userModel;

  ConfirmNumSuccess({required this.userModel});
}

final class ConfirmNumFailure extends LoginState {
  final String errorMessage;

  ConfirmNumFailure({required this.errorMessage});
}

//ChangePassword
final class ChangePasswordLoading extends LoginState {}

final class ChangePasswordSuccess extends LoginState {
  final String message;

  ChangePasswordSuccess({required this.message});
}

final class ChangePasswordFailure extends LoginState {
  final String errorMessage;

  ChangePasswordFailure({required this.errorMessage});
}
