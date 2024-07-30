import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/custom_forget_password_app_bar.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/forget_passwod_new_password_form.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/form_header.dart';

class ForgetPasswodNewPasswordView extends StatelessWidget {
  const ForgetPasswodNewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(
                  title: 'Create Password',
                  trailing:
                      Text('03/03', style: Styless.textSemiBold16(context)),
                ),
                const SizedBox(height: 50),
                const FormHeader(
                  leadingText: 'Enter your new password and remember it.',
                  viewTitle: 'New Password',
                ),
                const SizedBox(height: 50),
                const ForgetPasswodNewPasswordForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
