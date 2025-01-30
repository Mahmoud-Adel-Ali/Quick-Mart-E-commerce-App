import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class ProfileViewBodyItem extends StatelessWidget {
  const ProfileViewBodyItem({
    super.key,
    required this.title,
    this.onTap,
    required this.leadingImage,
  });
  final String title;

  final Function()? onTap;
  final String leadingImage;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Styless.textMedium14(context),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 20,
        color: context.color.textColor,
      ),
      onTap: onTap,
      leading: SvgPicture.asset(leadingImage),
    );
  }
}
