import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'checkout_header_section.dart';

class ReviewViewBody extends StatelessWidget {
  const ReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CheckoutHeaderSection(),
          CustomButton(
            onPressed: () {
              //Complete Checkout Process (Do)
            },
            text: "Place Order",
          ),
        ],
      ),
    );
  }
}
