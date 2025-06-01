import 'package:flutter/material.dart';

import '../../../../constant.dart';
import 'cart_list_view.dart';
import 'custom_order_info.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingOfView),
      child: Column(
        children: const [
          Expanded(child: CartListView()),
          CustomOrderInfo(
            subtotal: 25.25,
            shippingCost: 5.25,
          ),
        ],
      ),
    );
  }
}
