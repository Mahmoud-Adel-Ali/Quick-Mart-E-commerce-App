import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_routes.dart';
import 'custom_change_theme_mode_icon.dart';
import 'profile_view_body_item.dart';
import 'profile_view_body_section.dart';

class AccountManagement extends StatelessWidget {
  const AccountManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return  ProfileViewBodySection(
      title: 'Account Management',
      children: [
        ProfileViewBodyItem(
          title: 'Edit Profile',
          leadingImage: Assets.imagesEditProfile,
          height: 35,
          onTap: () {
            context.pushName(AppRoutes.updateProfileView);
          },
        ),
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
