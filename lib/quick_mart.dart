import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/theme/app_theme.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_card.dart';

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: context.read<AppCubit>().isDark ? themeDark() : themeLight(),
          //initialRoute: AppRoutes.splash,
          //onGenerateRoute: AppRoutes.onGenerateRoute,
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
    return Scaffold(
      body: Center(
          child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) => CustomProductCard(),
      )),
    );
  }
}
