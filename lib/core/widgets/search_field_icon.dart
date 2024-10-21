import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchFieldIcon extends StatelessWidget {
  const SearchFieldIcon({
    super.key,
    required this.icon,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      fit: BoxFit.scaleDown,
    );
  }
}
