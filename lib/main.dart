import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(const QuickMart());
}

class QuickMart extends StatelessWidget {
  const QuickMart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          return MaterialApp(
            theme: context.read<AppCubit>().isDark
                ? ThemeData.dark()
                : ThemeData.light(),
            // initialRoute: AppRoutes.login,
            // onGenerateRoute: AppRoutes.onGenerateRoute,
            home: const Test(),
          );
        },
      ),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(builder: (context, state) {
      return Scaffold(
        body: Center(
          child: MaterialButton(
            color: Colors.purple,
            onPressed: () {
              context.read<AppCubit>().changeAppThemeMode();
            },
            child: const Text('Change mode'),
          ),
        ),
      );
    });
  }
}
