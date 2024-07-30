import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/custom_app_bar.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/email_verification_form.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/email_verification_header.dart';

class ForgetPasswodEmailVerificationView extends StatelessWidget {
  const ForgetPasswodEmailVerificationView({super.key});

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
                  title: 'Forgot Password',
                  trailing:
                      Text('02/03', style: Styless.textSemiBold16(context)),
                ),
                const SizedBox(height: 50),
                const EmaillVerificationHeader(),
                const SizedBox(height: 30),
                EmailVerificationForm(
                  onCompleted: (code) {},
                  onTapProceed: () {
                    context.pushName(AppRoutes.forgetPasswodNewPassword);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
