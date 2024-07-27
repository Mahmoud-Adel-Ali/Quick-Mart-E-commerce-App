import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/custom_app_bar.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/forget_password_comfirm_email_form.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/form_header.dart';

class ForgetPasswordComfirmEmailView extends StatelessWidget {
  const ForgetPasswordComfirmEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: ForgetPasswordAppBar(),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CustomAppBar(
                  title: 'Forgot Password',
                  trailing: Text('01/03', style: Styless.textSemiBold14(context)),
                ),
                const SizedBox(height: 30),
                const FormHeader(
                    leadingText: 'Enter your email address for verification.',
                    viewTitle: 'Confirmation Email'),
                const SizedBox(height: 30),
                const ForgetPasswordComfirmEmailForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
