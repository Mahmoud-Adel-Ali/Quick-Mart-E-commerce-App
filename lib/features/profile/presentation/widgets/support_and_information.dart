import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import 'profile_view_body_item.dart';
import 'profile_view_body_section.dart';

class SupportAndInformation extends StatelessWidget {
  const SupportAndInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileViewBodySection(
      title: 'Support & Information',
      children: [
        ProfileViewBodyItem(
          title: 'Privacy Policy',
          leadingImage: Assets.imagesPrivacyPolicy,
        ),
        ProfileViewBodyItem(
          title: 'Terms & Conditions',
          leadingImage: Assets.imagesTermsAndConditions,
        ),
        ProfileViewBodyItem(
          title: 'FAQs',
          leadingImage: Assets.imagesFaqs,
        ),
      ],
    );
  }
}
