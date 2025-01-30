import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import 'custom_change_theme_mode_icon.dart';
import 'profile_view_body_item.dart';
import 'profile_view_body_section.dart';

class AccountManagement extends StatelessWidget {
  const AccountManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileViewBodySection(
      title: 'Account Management',
      children: [
        ProfileViewBodyItem(
          title: 'Change Password',
          leadingImage: Assets.imagesChangePassword,
        ),
        ProfileViewBodyItem(
          title: 'Dark Theme',
          leadingImage: Assets.imagesDarkTheme,
          trailling: CustomChangeThemeModeIcon(),
        ),
      ],
    );
  }
}
