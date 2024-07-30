import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/core/app/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/email_verification_form.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/email_verification_header.dart';

class ForgetPasswodEmailVerificationView extends StatelessWidget {
  const ForgetPasswodEmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customSimpleAppBar(context,
            onTapOnLeading: () =>
                context.pushNamedAndRemoveUntil(AppRoutes.login)),
        body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
