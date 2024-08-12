import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_cubit.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_state.dart';

import 'custom_onboarding_one_view.dart';

class OnBoardingThirdView extends StatelessWidget {
  const OnBoardingThirdView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnbordingCubit, OnbordingState>(
        builder: (context, state) {
      return CustomOnboardingOneView(
        leading: IconButton(
          onPressed: () {
            context.read<OnbordingCubit>().toSecondPage();
          },
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
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                  onBoardingIsVisited();
                },
                text: 'login',
                color: context.color.mainColor,
                textColor: context.color.buttonColor,
              ),
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.43,
              child: CustomButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.signUp);
                  onBoardingIsVisited();
                },
                text: 'Get Started',
              ),
            ),
          ],
        ),
      );
    });
  }

  void onBoardingIsVisited() {
    CacheHelper().setBoolean(CachKeys.onBoardingIsViewing, true);
  }
}
