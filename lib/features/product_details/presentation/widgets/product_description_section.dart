import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_badges.dart';
import 'package:quick_mart_app/features/product_details/presentation/widgets/product_rate.dart';

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
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              product.title ?? "nuLabled",
              style: Styless.textBold24(context),
            ),
            trailing: Text(
              "\$ ${product.price.toString()}",
              style: Styless.textBold18(context),
            ),
          ),
          ProductRate(),
        ],
      ),
    );
  }
}
