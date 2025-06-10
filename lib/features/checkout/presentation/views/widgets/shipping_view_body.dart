import 'package:flutter/material.dart';

import 'checkout_header_section.dart';
import 'shipping_form.dart';

class ShippingViewBody extends StatelessWidget {
  const ShippingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const [
        SliverToBoxAdapter(child: CheckoutHeaderSection()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverFillRemaining(
          hasScrollBody: false,
          child: ShippingForm(),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
      ],
    );
  }
}
