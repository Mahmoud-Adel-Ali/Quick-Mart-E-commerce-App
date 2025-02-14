part of 'profile_cubit.dart';

@immutable
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

// image picker states
final class PickedProfileImageLoading extends ProfileState {}

final class PickedProfileImageSuccess extends ProfileState {}

final class PickedProfileImageFailure extends ProfileState {}
