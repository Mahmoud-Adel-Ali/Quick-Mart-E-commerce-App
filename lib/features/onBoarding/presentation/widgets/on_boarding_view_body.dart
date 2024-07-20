import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Quick Mart', style: Styless.textMedium14(context)),
          Text('Quick Mart', style: Styless.textSemiBold14(context)),
          Text('Quick Mart', style: Styless.textBold24(context)),
          Text('Quick Mart', style: Styless.textRegular14(context)),
        ],
      ),
    );
  }
}
