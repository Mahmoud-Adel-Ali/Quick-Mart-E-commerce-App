part of 'app_cubit.dart';

class AppState {}

class AppInitial extends AppState {}

class ChangeThemeMode extends AppState {
  final bool isDark;

  ChangeThemeMode({required this.isDark});
}

class LogoutLoading extends AppState {}

class LogoutDone extends AppState {}
