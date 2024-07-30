import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/app_logo.dart';
import 'package:quick_mart_app/core/app/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: const AppLogo(),
      ),
      body: const SignUpViewBody(),
    );
  }
}
