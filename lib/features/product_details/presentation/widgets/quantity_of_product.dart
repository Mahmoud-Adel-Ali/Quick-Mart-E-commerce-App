
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/product/custom_quantity_of_product.dart';

class QuantityOfProduct extends StatelessWidget {
  const QuantityOfProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomQuantityOfProduct(),
    );
  }
}
