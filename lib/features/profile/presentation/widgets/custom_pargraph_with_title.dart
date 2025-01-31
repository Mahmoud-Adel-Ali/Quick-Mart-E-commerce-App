import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';

class CustomPargraphWithTitle extends StatelessWidget {
  const CustomPargraphWithTitle(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 12),
        SizedBox(
            width: double.infinity,
            child: Text(title, style: Styless.textSemiBold16(context))),
        Text(subtitle, style: Styless.textMedium14(context)),
      ],
    );
  }
}
