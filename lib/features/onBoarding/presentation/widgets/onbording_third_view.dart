import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';

import 'custom_onboarding_one_view.dart';

class OnBoardingThirdView extends StatelessWidget {
  const OnBoardingThirdView({
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
      // onTapOnSkipForNow: (){},
      image: Assets.imagesOnBoarding3,
      title: 'Safe and secure payments',
      subtitle:
          'QuickMart employs industry-leading encryption and trusted payment gateways to safeguard your financial information.',
      buttons: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.43,
            child: CustomButton(
              onPressed: () {},
              text: 'login',
              color: context.color.mainColor,
              textColor: context.color.buttonColor,
            ),
          ),
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.43,
            child: CustomButton(
              onPressed: () {},
              text: 'Get Started',
            ),
          ),
        ],
      ),
    );
  }
}
