import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/colors/colors_dark.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

class OnBorardingHeader extends StatelessWidget {
  const OnBorardingHeader({
    super.key,
    this.onTapOnSkipForNow,
    required this.leading,
  });
  final void Function()? onTapOnSkipForNow;
  final Widget leading;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading,
        GestureDetector(
          onTap: onTapOnSkipForNow,
          child: Text(
            'Skip for now',
            style: Styless.textRegular14(context)
                .copyWith(color: ColorsDark.buttonColor),
          ),
        )
      ],
    );
  }
}
