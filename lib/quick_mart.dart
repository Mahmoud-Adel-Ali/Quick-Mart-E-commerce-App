import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/app/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/core/utils/theme/app_theme.dart';

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit()
        ..changeAppThemeMode(
          sharedMode: CacheHelper().getBoolean(CachKeys.isDarkMode),
        ),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: context.read<AppCubit>().isDark ?
             themeDark() : themeLight(),
            // initialRoute: AppRoutes.splash,
            // onGenerateRoute: AppRoutes.onGenerateRoute,
            home: const AppWidgets(),
          );
        },
      ),
    );
  }
}
class AppWidgets extends StatelessWidget {
  const AppWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: CustomTextFormField(hintText: 'hint', lableText: 'Lable',),
        ),
      ),
    );
  }
}
