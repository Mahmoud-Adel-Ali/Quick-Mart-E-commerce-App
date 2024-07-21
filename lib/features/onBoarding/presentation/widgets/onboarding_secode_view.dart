import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';

import 'custom_onboarding_one_view.dart';

class OnBoardingSecodeView extends StatelessWidget {
  const OnBoardingSecodeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomOnboardingOneView(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back,
          color: context.color.textColor,
          size: 32,
        ),
      ),
      onTapOnSkipForNow: () {},
      image: Assets.imagesOnBoarding2,
      title: 'Unlock exclusive offers and discounts',
      subtitle:
          'Get access to limited-time deals and special promotions available only to our valued customers.',
      buttonOnPressed: () {},
      textOfButton: 'Next',
    );
  }
}
