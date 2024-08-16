import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/custom_email_verification_form.dart';
import 'package:quick_mart_app/core/widgets/email_verification_header.dart';

class EmailVerificationViewBody extends StatelessWidget {
  const EmailVerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          const EmaillVerificationHeader(),
          const SizedBox(height: 50),
          CustomEmailVerificationForm(
            onCompleted: (code) {},
            onTapProceed: () {},
          ),
        ],
      ),
    );
  }
}
