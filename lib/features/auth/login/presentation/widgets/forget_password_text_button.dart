import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  const ForgetPasswordTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          context.pushName(AppRoutes.forgetPasswordView);
        },
        child: Text(
          'Forgot password?',
          style: Styless.textSemiBold14(context)
              .copyWith(color: context.color.cyan),
        ),
      ),
    );
  }
}
