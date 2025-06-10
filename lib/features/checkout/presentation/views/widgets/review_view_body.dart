import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/widgets/custom_button.dart';
import 'checkout_header_section.dart';
import 'review_order_info_section.dart';
import 'shipping_address_section.dart';

class ReviewViewBody extends StatelessWidget {
  const ReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 20,
        children: [
          CheckoutHeaderSection(),
          ShippingAddressSection(),
          ReviewOrderInfoSection(
            subtotal: 25.25,
            shippingCost: 5.25,
          ),
          Expanded(child: SizedBox(height: 16)),
          CustomButton(
            onPressed: () {
              context.pushReplacementNamed(AppRoutes.orderPlacedSuccessfully);
            },
            text: "Place Order",
          ),
        ],
      ),
    );
  }
}
