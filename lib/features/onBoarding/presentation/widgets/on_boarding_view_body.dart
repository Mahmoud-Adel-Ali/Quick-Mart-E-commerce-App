import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/fonts/font_family_helper.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Quick Mart',
            style: TextStyle(
                fontFamily: FontFamilyHelper.plusJakartaSans,
                color: Colors.amber,
                fontSize: 25,
                fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
