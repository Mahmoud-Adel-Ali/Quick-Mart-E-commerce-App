import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/widgets/custom_toggel.dart';

class CustomChangeThemeModeIcon extends StatelessWidget {
  const CustomChangeThemeModeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(builder: (context, state) {
      return CustomToggel(
        value: context.read<AppCubit>().isDark,
        onChanged: (value) {
          context.read<AppCubit>().changeAppThemeMode();
        },
      );
    });
  }
}
