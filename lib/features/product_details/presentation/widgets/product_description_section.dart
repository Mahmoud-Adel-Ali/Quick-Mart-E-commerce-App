import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/models/all_product_model/product_model.dart';
import 'package:quick_mart_app/core/widgets/custom_badges.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/widgets/product/custom_quantity_of_product.dart';
import 'package:quick_mart_app/features/product_details/presentation/widgets/product_colors_list_view.dart';
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
          ProductColorsListView(
            colors: [
              context.color.browen,
              context.color.cyan,
              context.color.purple,
            ],
          ),
          SizedBox(height: 10),
          CustomQuantityOfProduct(),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  onPressed: () {},
                  text: 'Buy Now',
                  color: context.color.white,
                  textColor: context.color.black,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: CustomButton(
                  onPressed: () {},
                  text: 'Add To Card',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
