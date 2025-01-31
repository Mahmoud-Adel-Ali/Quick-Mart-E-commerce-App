import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/features/profile/presentation/widgets/profile_view_body.dart';

import '../widgets/profile_header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.cyan,
      body: const Column(
        children: [
          SizedBox(height: 40),
          ProfileHeader(),
          // SizedBox(height: 40),
          ProfileViewBody(),
        ],
      ),
    );
  }
}
