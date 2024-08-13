import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/api/dio_consumer.dart';
import 'package:quick_mart_app/core/widgets/app_logo.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/login_view_body.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(
          context,
          title: const AppLogo(),
        ),
        // bottomNavigationBar: ,
        body: BlocProvider(
          create: (context) => LoginCubit(
              authRepoImplementation:
                  AuthRepoImplementation(dio: DioConsumer(dio: Dio()))),
          child: const LoginViewBody(),
        ),
      ),
    );
  }
}
