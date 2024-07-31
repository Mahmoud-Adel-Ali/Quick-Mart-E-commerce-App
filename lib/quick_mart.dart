import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/theme/app_theme.dart';
import 'package:quick_mart_app/core/widgets/custom_badges.dart';

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: context.read<AppCubit>().isDark ? themeDark() : themeLight(),
          // initialRoute: AppRoutes.splash,
          // onGenerateRoute: AppRoutes.onGenerateRoute,
          home: const MyWidgets(),
        );
      },
    );
  }
}

class MyWidgets extends StatelessWidget {
  const MyWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TopRated(),
            SizedBox(height: 10),
            LimitedStock(),
            SizedBox(height: 10),
            ExclusiveSale(),
            SizedBox(height: 10),
            FreeShipping(),
            SizedBox(height: 10),
            PreOrder(),
            SizedBox(height: 10),
            SaleOff(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
