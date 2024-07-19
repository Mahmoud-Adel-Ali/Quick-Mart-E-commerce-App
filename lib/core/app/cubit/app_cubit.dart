import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  bool isDark = true;
  String currentLanguageCode = 'en';
  // theme mode
  Future<void> changeAppThemeMode({bool? sharedMode}) async {
    if (sharedMode != null) {
      isDark = sharedMode;
      emit(ChangeThemeMode(isDark: isDark));
    } else {
      isDark = !isDark;
      await CacheHelper().setBoolean(CachKeys.isDarkMode, isDark).then((value) {
        emit(ChangeThemeMode(isDark: isDark));
      });
    }
  }
}
