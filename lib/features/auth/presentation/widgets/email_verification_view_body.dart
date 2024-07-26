import 'package:flutter/material.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/email_verification_header.dart';

class EmailVerificationViewBody extends StatelessWidget {
  const EmailVerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          EmaillVerificationHeader(),
        ],
      ),
    );
  }
}