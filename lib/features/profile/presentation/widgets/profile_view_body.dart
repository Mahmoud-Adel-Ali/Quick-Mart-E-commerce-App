import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import '../../../../constant.dart';
import 'account_management.dart';
import 'personal_information.dart';
import 'support_and_information.dart';

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
          spacing: 12,
          children: const [
            SizedBox(height: 5),
            PersonalInformation(),
            SupportAndInformation(),
            AccountManagement(),
          ],
        ),
      ),
    );
  }
}
