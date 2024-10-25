import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/product/one_color_of_product.dart';

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
      width: (20 * productColors.length).toDouble(),
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
