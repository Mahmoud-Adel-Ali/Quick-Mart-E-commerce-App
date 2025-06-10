import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../cart/presentation/widgets/custom_order_info_item.dart';

class ReviewOrderInfoSection extends StatelessWidget {
  const ReviewOrderInfoSection({
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
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Info',
          style: Styless.textSemiBold18(context),
        ),
        Column(
          spacing: 8,
          children: [
            CustomOrderInfoItem(
              label: 'Subtotal',
              value: '\$${subtotal.toStringAsFixed(2)}',
            ),
            CustomOrderInfoItem(
              label: 'Shipping Cost',
              value: '\$${shippingCost.toStringAsFixed(2)}',
            ),
            CustomOrderInfoItem(
              label: 'Total',
              value: '\$${total.toStringAsFixed(2)}',
              isTotal: true,
            ),
          ],
        ),
      ],
    );
  }
}
