import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/colors/colors_dark.dart';

class InActiveIndecator extends StatelessWidget {
  const InActiveIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.color.grey100,
      ),
    );
  }
}

class ActiveIndecator extends StatelessWidget {
  const ActiveIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 20,
      margin: const EdgeInsets.all(3),
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsDark.cyan,
      ),
    );
  }
}
