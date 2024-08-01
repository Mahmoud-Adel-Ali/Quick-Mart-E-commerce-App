import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomWishIcon extends StatefulWidget {
  const CustomWishIcon({super.key});

  @override
  State<CustomWishIcon> createState() => _CustomWishIconState();
}

class _CustomWishIconState extends State<CustomWishIcon> {
  bool isLove = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        isLove = !isLove;
        setState(() {});
      },
      child: CircleAvatar(
        backgroundColor: context.color.textColor,
        child: isLove
            ? Icon(Icons.favorite, color: context.color.red)
            : Icon(Icons.favorite_border, color: context.color.grey100),
      ),
    );
  }
}
