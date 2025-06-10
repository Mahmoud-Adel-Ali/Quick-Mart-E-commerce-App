import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class PaymentButton extends StatelessWidget {
  final String assetPath; // image path
  final VoidCallback onTap;
  final double borderRadius;
  final EdgeInsets padding;

  const PaymentButton({
    super.key,
    required this.assetPath,
    required this.onTap,
    this.borderRadius = 16.0,
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: padding,
        decoration: BoxDecoration(
          color: context.color.cyan50,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: SvgPicture.asset(
            assetPath,
            height: 32,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
