import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/theme/app_theme.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _getTheme(context), // Initialize theme once
      initialRoute: AppRoutes.splash,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      builder: (context, child) {
        return BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            // Only rebuild the theme part (not the entire MaterialApp)
            return Theme(
              data:
                  context.read<AppCubit>().isDark ? themeDark() : themeLight(),
              child: child!,
            );
          },
        );
      },
    );
  }

  // Helper to get initial theme
  ThemeData _getTheme(BuildContext context) {
    return context.read<AppCubit>().isDark ? themeDark() : themeLight();
  }
}
