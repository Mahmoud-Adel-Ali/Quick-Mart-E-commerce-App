import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/style/fonts/font_family_helper.dart';

class OnBordingViewBody extends StatelessWidget {
  const OnBordingViewBody({super.key});

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