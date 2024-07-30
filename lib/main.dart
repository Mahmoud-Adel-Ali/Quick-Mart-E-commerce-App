import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/quick_mart.dart';

void main() async {
  // SystemChrome.setSystemUIOverlayStyle(
  //   const SystemUiOverlayStyle(
  //     systemNavigationBarColor:  Color(0xFF1C1B1B), // navigation bar color
  //     statusBarColor: Color(0xFF1C1B1B),
  //   ),
  // );
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper().init();
// this step used to set device not rotated
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(BlocProvider<AppCubit>(
      create: (context) => AppCubit()
        ..changeAppThemeMode(
          sharedMode: CacheHelper().getBoolean(CachKeys.isDarkMode),
        ),
      child: const QuickMart()));
  });
}
