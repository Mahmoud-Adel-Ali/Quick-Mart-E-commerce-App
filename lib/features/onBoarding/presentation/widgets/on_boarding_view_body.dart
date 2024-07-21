import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onboading_first_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: OnBoardingFirstView(),
    );
  }
}

