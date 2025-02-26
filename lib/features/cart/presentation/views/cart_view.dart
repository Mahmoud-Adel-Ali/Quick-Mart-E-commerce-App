import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';

import '../../../../core/utils/styles.dart';
import '../widgets/cart_view_body.dart';
import '../widgets/voucher_code_bottom_sheet.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: Text(
          "My Cart",
          style: Styless.textSemiBold18(context),
        ),
        actions: [
          TextButton(
            onPressed: () {
              voucherCodeBottomSheet(context);
            },
            child: Text(
              'Voucher Code',
              style: Styless.textSemiBold14(context).copyWith(
                color: context.color.cyan,
              ),
            ),
          ),
        ],
      ),
      body: CartViewBody(),
    );
  }
}
