import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

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
    return CustomButton(
      onPressed: () {},
      text: text,
      color: context.color.mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text, style: Styless.textSemiBold16(context)),
          const SizedBox(width: 20),
          SvgPicture.asset(Assets.imagesGoogle),
        ],
      ),
    );
  }
}
