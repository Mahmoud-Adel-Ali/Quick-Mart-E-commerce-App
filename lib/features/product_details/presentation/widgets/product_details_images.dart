import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/models/all_product_model/product_model.dart';
import 'package:quick_mart_app/core/widgets/custom_cached_network_image.dart';
import 'package:quick_mart_app/core/widgets/product/custom_wish_icon.dart';

class ProductDetailsImages extends StatelessWidget {
  const ProductDetailsImages({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.sizeOf(context).height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 32),
      alignment: Alignment.topCenter,
      height: height * 0.4,
      decoration: BoxDecoration(
        image: customCachedNetworkImageprovider(product.images?.first ?? ""),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back, color: context.color.textColor),
          ),
          CustomWishIcon()
        ],
      ),
    );
  }
}
