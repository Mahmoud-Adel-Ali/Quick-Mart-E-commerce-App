import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomQuickMartHeader extends StatelessWidget {
  const CustomQuickMartHeader({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      child: SvgPicture.asset(
        context.image.quickmartImage,
        fit: BoxFit.scaleDown,
        height: height * 0.05,
      ),
    );
  }
}
