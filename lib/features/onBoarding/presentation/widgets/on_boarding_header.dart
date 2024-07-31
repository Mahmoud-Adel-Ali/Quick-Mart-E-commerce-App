import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/colors/colors_dark.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

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
    return onTapOnSkipForNow == null
        ? Container(
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: leading)
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              leading,
              SkipForNow(onTapOnSkipForNow: onTapOnSkipForNow)
            ],
          );
  }
}

class SkipForNow extends StatelessWidget {
  const SkipForNow({
    super.key,
    required this.onTapOnSkipForNow,
  });

  final void Function()? onTapOnSkipForNow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapOnSkipForNow,
      child: Text(
        'Skip for now',
        style: Styless.textRegular14(context)
            .copyWith(color: ColorsDark.cyan),
      ),
    );
  }
}
