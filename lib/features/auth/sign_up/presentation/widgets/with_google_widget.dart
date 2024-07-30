import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

class WithGoogleWidget extends StatelessWidget {
  const WithGoogleWidget({
    super.key,
    this.onTap,
    required this.text,
  });
  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Styless.textSemiBold16(context),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: onTap,
          child: SvgPicture.asset(Assets.imagesGoogle),
        ),
      ],
    );
  }
}
