import 'package:flutter/material.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/new_password_form.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/form_header.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
            NewPasswordForm(),
          ],
        ),
      ),
    );
  }
}
