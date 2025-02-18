part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

// get user profile data from local storage
final class GetUserProfileSuccess extends ProfileState {}

// image picker states
final class PickedProfileImageLoading extends ProfileState {}

final class PickedProfileImageSuccess extends ProfileState {}

final class PickedProfileImageFailure extends ProfileState {}

//update profile states
final class UpdateProfileLoading extends ProfileState {}

final class UpdateProfileSuccess extends ProfileState {}

final class UpdateProfileFailure extends ProfileState {
  final String errorMessage;

  UpdateProfileFailure({required this.errorMessage});
}

// change password states
final class ChangePasswordLoading extends ProfileState {}

final class ChangePasswordSuccess extends ProfileState {}

final class ChangePasswordFailure extends ProfileState {
  final String errorMessage;

  ChangePasswordFailure({required this.errorMessage});
}
