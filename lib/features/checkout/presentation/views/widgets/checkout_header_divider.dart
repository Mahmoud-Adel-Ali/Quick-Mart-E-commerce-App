import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CheckoutHeaderDivider extends StatelessWidget {
  const CheckoutHeaderDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 2,
        color: context.color.grey100,
        margin: const EdgeInsets.symmetric(horizontal: 6),
      ),
    );
  }
}
