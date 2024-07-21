import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/colors/colors_dark.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onboading_first_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onboarding_secode_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onbording_third_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      initialPage: 0,
      height: double.infinity,
      onPageChanged: (value) {},
      disableUserScrolling: true,
      indicatorColor:ColorsDark.buttonColor,
      indicatorRadius: 6,
      indicatorBackgroundColor: context.color.textColorWithOpacity,
      children: const [
        OnBoardingFirstView(),
        OnBoardingSecodeView(),
        OnBoardingThirdView(),
      ],
    );
  }
}
