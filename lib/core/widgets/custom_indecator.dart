import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/colors/colors_dark.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomIndecator extends StatelessWidget {
  const CustomIndecator(
      {super.key,
      required this.numOfIndecator,
      required this.activeIndecatorPosition});
  final int numOfIndecator;
  final int activeIndecatorPosition;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18,
      width: numOfIndecator * 17,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: numOfIndecator,
        itemBuilder: (context, index) {
          return index != activeIndecatorPosition
              ? const InActiveIndecator()
              : const ActiveIndecator();
        },
      ),
    );
  }
}

class InActiveIndecator extends StatelessWidget {
  const InActiveIndecator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10,
      width: 10,
      margin: const EdgeInsets.symmetric(horizontal: 1),
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
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: ColorsDark.cyan,
      ),
    );
  }
}
