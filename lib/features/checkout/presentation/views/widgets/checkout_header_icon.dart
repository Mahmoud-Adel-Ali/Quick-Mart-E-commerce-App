import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class CheckoutHeaderIcon extends StatelessWidget {
  const CheckoutHeaderIcon({
    super.key,
    required this.iconPath,
    required this.iconTitle,
    this.isActive = false,
  });
  final String iconPath;
  final String iconTitle;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(iconPath),
        Text(
          iconTitle,
          style: Styless.textMedium14(context).copyWith(
            color: isActive ? context.color.cyan : context.color.textColor,
          ),
        ),
      ],
    );
  }
}
