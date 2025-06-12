import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/custom_view_body.dart';

import '../../../../core/utils/app_images.dart';

class EmptyCartViewBody extends StatelessWidget {
  const EmptyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomViewBody(
      img: Assets.imagesEmptyCart,
      title: 'Your cart is empty',
      subtitle:
          'Looks like you have not added anything in your cart. Go ahead and explore top categories.',
      textButton: 'Explore Categories',
      onPressedOnButton: () {},
    );
  }
}
