import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';
import 'package:quick_mart_app/core/widgets/custom_badges.dart';
import 'package:quick_mart_app/features/product_details/presentation/widgets/product_disctiption_title.dart';
import 'package:quick_mart_app/features/product_details/presentation/widgets/product_rate.dart';
import 'package:quick_mart_app/features/product_details/presentation/widgets/product_title_and_price.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: const [
              TopRated(),
              SizedBox(width: 10),
              FreeShipping(),
            ],
          ),
          ProductTitleAndPrice(product: product),
          SizedBox(height: 10),
          ProductRate(),
          SizedBox(height: 10),
          ProductDiscriptionTitle(product: product),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
