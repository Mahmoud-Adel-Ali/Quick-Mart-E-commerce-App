import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class CustomCardItemPrice extends StatelessWidget {
  const CustomCardItemPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            r'$15.25',
            style: Styless.textSemiBold16(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            r'$25.25',
            style: Styless.textSemiBold14(context).copyWith(
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ),
      ],
    );
  }
}
