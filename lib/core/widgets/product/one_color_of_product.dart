import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class OneColorsOfProduct extends StatelessWidget {
  const OneColorsOfProduct(
      {super.key,
      required this.color,
      this.onTap,
      required this.isSelected,
      this.radius = 25});
  final Color color;
  final bool isSelected;
  final double radius;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: isSelected ? radius + 2 : radius,
        height: isSelected ? radius + 2 : radius,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
              width: 2, color: isSelected ? context.color.blue : color),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
