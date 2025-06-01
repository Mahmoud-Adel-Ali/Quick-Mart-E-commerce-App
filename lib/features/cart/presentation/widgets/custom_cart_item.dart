import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import 'add_more_about_item_section.dart';
import 'custom_card_item_price.dart';
import 'custom_cart_item_image.dart';
import 'custom_cart_item_name_and_checkout.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        //TODO : navigate to product details , but after API equipment
        // context.pushReplacementNamed(AppRoutes.productDetailsView);
      },
      child: SizedBox(
        height: 188,
        child: Card(
          color: context.color.grey50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomCartItemImage(),
              const SizedBox(width: 10),
              _buildItemDetails(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildItemDetails() {
    return const Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomCartItemNameAndCheckout(),
            CustomCardItemPrice(),
            AddMoreAboutItemSection(),
          ],
        ),
      ),
    );
  }
}
