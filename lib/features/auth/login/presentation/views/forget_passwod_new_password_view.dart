import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/forget_passwod_new_password_form.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/form_header.dart';

class ForgetPasswodNewPasswordView extends StatelessWidget {
  const ForgetPasswodNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customSimpleAppBar(context,
            onTapOnLeading: () =>
                context.pushNamedAndRemoveUntil(AppRoutes.login)),
        body: const Padding(
          padding: EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                FormHeader(
                  leadingText: 'Enter your new password and remember it.',
                  viewTitle: 'New Password',
                ),
                SizedBox(height: 50),
                ForgetPasswodNewPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
