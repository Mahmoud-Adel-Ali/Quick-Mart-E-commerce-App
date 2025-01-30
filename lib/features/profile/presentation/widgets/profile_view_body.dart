import 'package:flutter/material.dart';

import '../../../../constant.dart';
import 'profile_header.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(paddingOfView),
      child: Column(
        children: [
          SizedBox(height: 40),
          ProfileHeader(),
        ],
      ),
    );
  }
}
