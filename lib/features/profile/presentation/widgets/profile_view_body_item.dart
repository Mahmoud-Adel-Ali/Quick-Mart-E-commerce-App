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
    this.trailling,
    this.height,
    this.width,
  });
  final String title;
  final Widget? trailling;
  final Function()? onTap;
  final String leadingImage;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: Styless.textMedium14(context),
      ),
      contentPadding: EdgeInsets.all(2),
      trailing: trailling ??
          Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: context.color.textColor,
          ),
      onTap: onTap,
      leading: SvgPicture.asset(
        leadingImage,
        height: height,
        width: width,
      ),
    );
  }
}
