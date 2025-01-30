import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';

import '../../../../constant.dart';
import 'custom_change_theme_mode_icon.dart';
import 'profile_view_body_item.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(paddingOfView),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
          color: context.color.mainColor,
        ),
        child: Column(
          children: const [
            ProfileViewBodyItem(
                title: 'Shipping Adress',
                leadingImage: Assets.imagesShippingAddress),
            ProfileViewBodyItem(
                title: 'Payment Method',
                leadingImage: Assets.imagesPaymentMethod),
            ProfileViewBodyItem(
                title: 'Order History',
                leadingImage: Assets.imagesOrderHistory),
            ProfileViewBodyItem(
                title: 'Privacy Policy',
                leadingImage: Assets.imagesPrivacyPolicy),
            ProfileViewBodyItem(
                title: 'Terms & Conditions',
                leadingImage: Assets.imagesTermsAndConditions),
            ProfileViewBodyItem(title: 'FAQs', leadingImage: Assets.imagesFaqs),
            ProfileViewBodyItem(
                title: 'Change Password',
                leadingImage: Assets.imagesChangePassword),
            ProfileViewBodyItem(
              title: 'Dark Theme',
              leadingImage: Assets.imagesDarkTheme,
              trailling: CustomChangeThemeModeIcon(),
            ),
          ],
        ),
      ),
    );
  }
}
