import 'package:flutter/widgets.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/utils/app_routes.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';
import 'custom_order_info_item.dart';

class CustomOrderInfoSection extends StatelessWidget {
  const CustomOrderInfoSection({
    super.key,
    required this.subtotal,
    required this.shippingCost,
  });

  final double subtotal;
  final double shippingCost;
  @override
  Widget build(BuildContext context) {
    final total = subtotal + shippingCost;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Info',
          style: Styless.textSemiBold18(context),
        ),
        const SizedBox(height: 10),
        CustomOrderInfoItem(
          label: 'Subtotal',
          value: '\$${subtotal.toStringAsFixed(2)}',
        ),
        const SizedBox(height: 5),
        CustomOrderInfoItem(
          label: 'Shipping Cost',
          value: '\$${shippingCost.toStringAsFixed(2)}',
        ),
        CustomOrderInfoItem(
          label: 'Total',
          value: '\$${total.toStringAsFixed(2)}',
          isTotal: true,
        ),
        SizedBox(height: 20),
        CustomButton(
          onPressed: () {
            context.pushName(AppRoutes.checkoutView);
          },
          text: 'Checkout ( ${total.toStringAsFixed(2)} \$)',
        ),
      ],
    );
  }
}
