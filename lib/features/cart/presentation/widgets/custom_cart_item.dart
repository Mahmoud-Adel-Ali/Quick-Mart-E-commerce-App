import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/product/custom_quantity_of_product.dart';
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

class AddMoreAboutItemSection extends StatelessWidget {
  const AddMoreAboutItemSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomQuantityOfProduct(),
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Icon(
            Icons.delete,
            color: context.color.red,
          ),
        ),
      ],
    );
  }
}

class CustomCardItemPrice extends StatelessWidget {
  const CustomCardItemPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            r'$15.25',
            style: Styless.textSemiBold16(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            r'$25.25',
            style: Styless.textSemiBold14(context).copyWith(
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ),
      ],
    );
  }
}
