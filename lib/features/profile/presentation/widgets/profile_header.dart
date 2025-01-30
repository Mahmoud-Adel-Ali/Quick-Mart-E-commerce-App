import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Mahmoud Adel',
        style: Styless.textSemiBold16(context)
            .copyWith(color: context.color.white),
      ),
      subtitle: Text(
        'mahmoudadel@gmail.com',
        style: Styless.textSemiBold14(context)
            .copyWith(color: context.color.white),
      ),
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(Assets.imagesCategory),
      ),
      trailing: SvgPicture.asset(Assets.imagesLogoutIcon),
    );
  }
}
