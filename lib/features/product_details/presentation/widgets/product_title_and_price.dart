import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/models/all_product_model/product_model.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class ProductTitleAndPrice extends StatelessWidget {
  const ProductTitleAndPrice({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        product.name ?? "nuLabled",
        style: Styless.textBold24(context),
      ),
      trailing: Text(
        "\$ ${product.price.toString()}",
        style: Styless.textBold18(context),
      ),
    );
  }
}
