import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';

import '../../../../constant.dart';
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
        child: const Column(
            children: 
            [
              ProfileViewBodyItem(title: 'Shipping Adress', leadingImage: Assets.imagesShippingAddress,)
            ],
            ),
      ),
    );
  }
}
