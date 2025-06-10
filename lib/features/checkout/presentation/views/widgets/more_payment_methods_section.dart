import 'package:flutter/material.dart';

import '../../../../../core/utils/app_images.dart';
import 'payment_button.dart';

class MorePaymentMethodsSection extends StatelessWidget {
  const MorePaymentMethodsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: PaymentButton(
            assetPath: Assets.imagesPaypalIcon,
            onTap: () {},
          ),
        ),
        Expanded(
          child: PaymentButton(
            assetPath: Assets.imagesGPayIcon,
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
