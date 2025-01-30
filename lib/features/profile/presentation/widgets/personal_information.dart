import 'package:flutter/material.dart';
import 'package:quick_mart_app/features/profile/presentation/widgets/profile_view_body_section.dart';

import '../../../../core/utils/app_images.dart';
import 'profile_view_body_item.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileViewBodySection(
      title: 'Personal Information',
      children: [
        ProfileViewBodyItem(
          title: 'Shipping Adress',
          leadingImage: Assets.imagesShippingAddress,
        ),
        ProfileViewBodyItem(
          title: 'Payment Method',
          leadingImage: Assets.imagesPaymentMethod,
        ),
        ProfileViewBodyItem(
          title: 'Order History',
          leadingImage: Assets.imagesOrderHistory,
        ),
      ],
    );
  }
}
