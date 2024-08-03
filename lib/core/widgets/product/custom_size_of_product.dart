import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class CustomSizeOfProduct extends StatelessWidget {
  const CustomSizeOfProduct(
      {super.key, this.isDark = false, required this.productSize});
  final bool isDark;
  final ProductSize productSize;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: isDark ? context.color.white : context.color.black,
      child: Text(
        getProductSize(),
        style: Styless.textSemiBold14(context).copyWith(
            color: isDark ? context.color.black : context.color.white),
      ),
    );
  }

  String getProductSize() {
    switch (productSize) {
      case ProductSize.l:
        return 'L';
      case ProductSize.xl:
        return 'XL';
      case ProductSize.xxl:
        return 'XXL';
      case ProductSize.s:
        return 'S';
      case ProductSize.xs:
        return 'XS';
      case ProductSize.m:
        return 'M';
    }
  }
}

enum ProductSize {m, l, xl, xxl, s,xs }
