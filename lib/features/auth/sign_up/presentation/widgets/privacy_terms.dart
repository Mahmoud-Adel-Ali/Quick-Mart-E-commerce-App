
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

class PrivacyTerms extends StatelessWidget {
  const PrivacyTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
            child: SizedBox(
          height: 100,
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'By login , you agree to our ',
              style: Styless.textSemiBold14(context),
              textAlign: TextAlign.center,
            ),
            Text(
              ' Privacy Policy ',
              style: Styless.textSemiBold14(context)
                  .copyWith(color: context.color.blue),
              textAlign: TextAlign.center,
            ),
            Text(
              'and ',
              style: Styless.textSemiBold14(context),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Text(
          ' Terms & Conditions.',
          style: Styless.textSemiBold14(context)
              .copyWith(color: context.color.blue),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
