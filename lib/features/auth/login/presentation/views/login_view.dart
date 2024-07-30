import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/app_logo.dart';
import 'package:quick_mart_app/core/app/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/login_view_body.dart';

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
        body: const LoginViewBody(),
      ),
    );
  }
}