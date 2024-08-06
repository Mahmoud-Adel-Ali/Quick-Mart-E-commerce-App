import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_cubit.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_state.dart';
import 'package:quick_mart_app/core/widgets/custom_indecator.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onboading_first_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onboarding_secode_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onbording_third_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});
  Widget? currentPage(int index) {
    switch (index) {
      case 0:
        return const OnBoardingFirstView();
      case 1:
        return const OnBoardingSecodeView();
      case 2:
        return const OnBoardingThirdView();
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnbordingCubit, OnbordingState>(
        builder: (context, state) {
      return Column(
        children: [
          currentPage(context.read<OnbordingCubit>().initialPage)!,
          CustomIndecator(
            numOfIndecator: 3,
            activeIndecatorPosition: context.read<OnbordingCubit>().initialPage,
          )
        ],
      );
    });
  }
}
