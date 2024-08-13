import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/forget_passwod_email_verification_view_body.dart';

class ForgetPasswodEmailVerificationView extends StatelessWidget {
  const ForgetPasswodEmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppBar(context,
            title:
                Text('Forgot Password', style: Styless.textSemiBold14(context)),
            onTapOnLeading: () =>
                context.pushNamedAndRemoveUntil(AppRoutes.login)),
        body: ForgetPasswodEmailVerificationViewBody(),
      ),
    );
  }
}
