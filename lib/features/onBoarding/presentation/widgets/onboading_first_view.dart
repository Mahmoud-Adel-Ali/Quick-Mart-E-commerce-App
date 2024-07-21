import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/on_boarding_header.dart';

import 'custom_onboarding_one_view.dart';

class OnBoardingFirstView extends StatelessWidget {
  const OnBoardingFirstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomOnboardingOneView(
      leading: SvgPicture.asset(
        context.image.quickmartImage,
        height: 35,
      ),
      onTapOnSkipForNow: () {},
      image: Assets.imagesOnBoarding1,
      title: 'Explore a wide range of products',
      subtitle:
          'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
      buttonOnPressed: () {},
      textOfButton: 'Next',
    );
  }
}
