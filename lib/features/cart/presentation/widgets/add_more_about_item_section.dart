import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/widgets/product/custom_quantity_of_product.dart';

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
