import 'package:flutter/widgets.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../cart/presentation/widgets/custom_order_info_item.dart';

class ShippingAddressSection extends StatelessWidget {
  const ShippingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Shipping Address',
          style: Styless.textSemiBold18(context),
        ),
        Column(
          spacing: 8,
          children: const [
            CustomOrderInfoItem(
              label: 'Full Name',
              value: 'Mahmoud Adel Ali',
            ),
            SizedBox(height: 5),
            CustomOrderInfoItem(
              label: 'Mobile Number',
              value: '+20123456789',
            ),
            CustomOrderInfoItem(
              label: 'Province',
              value: 'Sohag',
            ),
            CustomOrderInfoItem(
              label: 'City',
              value: 'Sohag',
            ),
            CustomOrderInfoItem(
              label: 'Street Address',
              value: '123 Street',
            ),
            CustomOrderInfoItem(
              label: 'Postal Code',
              value: '12345',
            ),
          ],
        ),
      ],
    );
  }
}
