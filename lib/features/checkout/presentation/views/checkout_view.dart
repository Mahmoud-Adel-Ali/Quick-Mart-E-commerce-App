import 'package:flutter/material.dart';

import 'widgets/checkout_app.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: checkoutAppBar(context),
    );
  }
}
