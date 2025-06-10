import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_routes.dart';
import '../../../../core/widgets/custom_view_body.dart';

class OrderPlacedSuccessfullyViewBody extends StatelessWidget {
  const OrderPlacedSuccessfullyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomViewBody(
      img: Assets.imagesCheckoutSuccess,
      title: 'Your order has been placed successfully',
      subtitle:
          'Thank you for choosing us! Feel free to continue shopping and explore our wide range of products. Happy Shopping!',
      textButton: 'Continue Shopping',
      onPressedOnButton: () => context.pushReplacementNamed(
        AppRoutes.quickMartAppViews,
      ),
    );
  }
}
