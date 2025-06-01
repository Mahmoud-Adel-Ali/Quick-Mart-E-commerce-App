import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class ReviewViewBody extends StatelessWidget {
  const ReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: CustomButton(
        onPressed: () {
          //Complete Checkout Process (Do)
        },
        text: "Place Order",
      ),
    );
  }
}
