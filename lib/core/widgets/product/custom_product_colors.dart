
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomProductColors extends StatelessWidget {
  const CustomProductColors({
    super.key,
    required this.productColors,
    required this.currentColor,
  });
  final List<Color> productColors;
  final int currentColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: (17 * productColors.length).toDouble(),
      child: Stack(
        alignment: Alignment.center,
        children: productColors.reversed.toList().asMap().entries.map(
          (e) {
            int index = e.key;
            Color color = e.value;
            return Positioned(
              right: index * 15,
              child: OneColorsOfProduct(
                color: color,
                isSelected: index + 1 ==
                    (currentColor - 1 - productColors.length).abs(),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}

class OneColorsOfProduct extends StatelessWidget {
  const OneColorsOfProduct(
      {super.key, required this.color, required this.isSelected});
  final Color color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: isSelected ? 26 : 24,
      height: isSelected ? 26 : 24,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
            width: 2, color: isSelected ? context.color.blue : color),
        shape: BoxShape.circle,
      ),
    );
  }
}
