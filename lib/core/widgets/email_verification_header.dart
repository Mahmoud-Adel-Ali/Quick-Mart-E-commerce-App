import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class EmaillVerificationHeader extends StatelessWidget {
  const EmaillVerificationHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Email Verification',
        style: Styless.textBold24(context),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top:  20.0),
        child: Text(
          'Enter the 6-digit verification code send to your email address.',
          style: Styless.textMedium14(context).copyWith(color: context.color.grey150),
        ),
      ),
    );
  }
}
