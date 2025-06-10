import 'package:flutter/material.dart';

import 'checkout_header_section.dart';
import 'more_payment_methods_section.dart';
import 'payment_form.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: const [
        SliverToBoxAdapter(child: CheckoutHeaderSection()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: MorePaymentMethodsSection()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverFillRemaining(hasScrollBody: false, child: PaymentForm()),
        SliverToBoxAdapter(child: SizedBox(height: 16)),
      ],
    );
  }
}
