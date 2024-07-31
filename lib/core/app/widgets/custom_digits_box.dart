import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class CustomDigitsBox extends StatelessWidget {
  const CustomDigitsBox({super.key, required this.digit});
  final int digit;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: context.color.cyan50,
          border: Border.all(
            color: context.color.cyan,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          digit.toString(),
          style: Styless.textSemiBold16(context),
        ),
      ),
    );
  }
}
