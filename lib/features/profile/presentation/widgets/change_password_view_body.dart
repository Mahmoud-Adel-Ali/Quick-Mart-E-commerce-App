import 'package:flutter/material.dart';

import '../../../auth/sign_up/presentation/widgets/form_header.dart';

class ChangePasswordViewBody extends StatelessWidget {
  const ChangePasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            FormHeader(
              viewTitle: 'Change Password',
              secondViewName: "",
              leadingText: 'Now , You can change your password.',
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
