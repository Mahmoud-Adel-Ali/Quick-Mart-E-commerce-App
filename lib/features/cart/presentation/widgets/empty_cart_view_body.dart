import 'package:flutter/material.dart';
import 'package:quick_mart_app/constant.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';

class EmptyCartViewBody extends StatelessWidget {
  const EmptyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(paddingOfView),
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.imagesEmptyCart,
            ),
            Text(
              'Your cart is empty',
              style: Styless.textSemiBold32(context),
              textAlign: TextAlign.center,
            ),
            Text(
              'Looks like you have not added anything in your cart. Go ahead and explore top categories.',
              style: Styless.textRegular16(context),
              textAlign: TextAlign.center,
            ),
            CustomButton(
              onPressed: () {},
              text: 'Explore Categories',
            )
          ],
        ),
      ),
    );
  }
}
