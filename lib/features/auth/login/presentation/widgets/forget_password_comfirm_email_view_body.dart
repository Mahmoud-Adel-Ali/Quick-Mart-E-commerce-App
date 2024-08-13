import 'package:flutter/material.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/forget_password_comfirm_email_form.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/form_header.dart';

class ForgetPasswordComfirmEmailViewBody extends StatelessWidget {
  const ForgetPasswordComfirmEmailViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            FormHeader(
                leadingText: 'Enter your email address for verification.',
                viewTitle: 'Confirmation Email'),
            SizedBox(height: 30),
            ForgetPasswordComfirmEmailForm(),
          ],
        ),
      ),
    );
  }
}