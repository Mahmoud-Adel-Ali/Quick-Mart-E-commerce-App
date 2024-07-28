import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_cubit.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_state.dart';

import 'custom_onboarding_one_view.dart';

class OnBoardingSecodeView extends StatelessWidget {
  const OnBoardingSecodeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnbordingCubit, OnbordingState>(
        builder: (context, state) {
      return CustomOnboardingOneView(
        leading: IconButton(
          onPressed: () {
            context.read<OnbordingCubit>().toFirstPage();
          },
          icon: Icon(
            Icons.arrow_back,
            color: context.color.textColor,
            size: 32,
          ),
        ),
        onTapOnSkipForNow: () {
          context.pushReplacementNamed(AppRoutes.login);
        },
        image: Assets.imagesOnBoarding2,
        title: 'Unlock exclusive offers and discounts',
        subtitle:
            'Get access to limited-time deals and special promotions available only to our valued customers.',
        buttons: CustomButton(
            onPressed: () {
              context.read<OnbordingCubit>().toThirdPage();
            },
            text: 'Next'),
      );
    });
  }
}
