import 'package:flutter/widgets.dart';

import 'custom_cart_item.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) => const CustomCartItem(),
    );
  }
}
