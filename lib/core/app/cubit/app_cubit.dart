import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/utils/colors/colors_dark.dart';
import 'package:quick_mart_app/core/utils/colors/colors_light.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  bool isDark = true;
  String currentLanguageCode = 'en';
  // theme mode
  Future<void> changeAppThemeMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      _setStatusBarColor();
      emit(ChangeThemeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await CacheHelper().setBoolean(CachKeys.isDarkMode, isDark).then((value) {
        _setStatusBarColor();
        emit(ChangeThemeMode(isDark: isDark));
      });
    }
  }

  void _setStatusBarColor() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: isDark
          ? ColorsDark.black
          : ColorsLight.white, // Adjust these colors as needed
      statusBarIconBrightness: isDark ? Brightness.light : Brightness.dark,
    ));
  }
}
