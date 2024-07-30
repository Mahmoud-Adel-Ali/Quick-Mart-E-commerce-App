import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_cubit.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_state.dart';

import 'custom_onboarding_one_view.dart';

class OnBoardingFirstView extends StatelessWidget {
  const OnBoardingFirstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnbordingCubit, OnbordingState>(
        builder: (context, state) {
      return CustomOnboardingOneView(
        leading: Image.asset(
          context.image.quickmartImage,
          height: 35,
        ),
        onTapOnSkipForNow: () {
          context.read<OnbordingCubit>().toThirdPage();
        },
        image: Assets.imagesOnBoarding1,
        title: 'Explore a wide range of products',
        subtitle:
            'Explore a wide range of products at your fingertips. QuickMart offers an extensive collection to suit your needs.',
        buttons: CustomButton(
            onPressed: () {
              context.read<OnbordingCubit>().toSecondPage();
            },
            text: 'Next'),
      );
    });
  }
}
