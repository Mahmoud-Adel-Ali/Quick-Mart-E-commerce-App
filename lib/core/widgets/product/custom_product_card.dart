// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/models/all_product_model/product_model.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_card_image.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_colors.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key, required this.product});
  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(
          AppRoutes.productDetailsView,
          arguments: product,
        );
      },
      child: Card(
        color: context.color.mainColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomProductCardImage(imgPath: product.images?[0] ?? ""),
            Row(
              children: [
                CustomProductColors(
                  productColors: [
                    context.color.textColor,
                    context.color.cyan50General,
                    context.color.cyan,
                  ],
                  currentColor: 1,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'All 5 Colors',
                    style: Styless.textMedium14(context).copyWith(
                        color: context.color.grey150,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            Text(
              product.name ?? "unLabled",
              maxLines: 1,
              style: Styless.textBold18(context),
            ),
            Text(
              '\$${product.price.toString()}',
              maxLines: 1,
              style: Styless.textSemiBold16(context),
            ),
            Text(
              'Discount: ${product.discount.toString()}',
              maxLines: 1,
              style: Styless.textRegular12(context),
            ),
          ],
        ),
      ),
    );
  }
}
