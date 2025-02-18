part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

// get banner states
final class GetBannerDataLoadin extends HomeState {}

final class GetBannerDataSuccess extends HomeState {}

final class GetBannerDataError extends HomeState {
  final String errorMessage;

  GetBannerDataError({required this.errorMessage});
}
