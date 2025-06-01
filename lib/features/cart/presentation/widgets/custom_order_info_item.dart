
import 'package:flutter/widgets.dart';

import '../../../../core/utils/styles.dart';

class CustomOrderInfoItem extends StatelessWidget {
  const CustomOrderInfoItem({
    super.key,
    required this.label,
    required this.value,
    this.isTotal = false,
  });
  final String label;
  final String value;
  final bool isTotal;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: isTotal
              ? Styless.textSemiBold16(context)
              : Styless.textMedium14(context),
        ),
        Text(
          value,
          style: isTotal
              ? Styless.textSemiBold16(context)
              : Styless.textMedium14(context),
        ),
      ],
    );
  }
}
