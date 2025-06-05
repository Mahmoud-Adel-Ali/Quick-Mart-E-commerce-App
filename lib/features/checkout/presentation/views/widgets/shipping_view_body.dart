import 'package:flutter/material.dart';

import 'checkout_header_section.dart';
import 'shipping_form.dart';

class ShippingViewBody extends StatelessWidget {
  const ShippingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          CheckoutHeaderSection(),
          SizedBox(height: 20),
          ShippingForm(),
        ],
      ),
    );
  }
}
