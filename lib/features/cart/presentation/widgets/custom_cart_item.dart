import 'package:flutter/material.dart';

import 'add_more_about_item_section.dart';
import 'custom_card_item_price.dart';
import 'custom_cart_item_image.dart';
import 'custom_cart_item_name_and_checkout.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Card(
        child: Row(
          children: const [
            CustomCartItemImage(),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomCartItemNameAndCheckout(),
                  CustomCardItemPrice(),
                  AddMoreAboutItemSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
