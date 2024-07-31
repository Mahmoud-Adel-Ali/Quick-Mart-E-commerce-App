import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_cubit.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_state.dart';
import 'package:quick_mart_app/core/widgets/indecator.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onboading_first_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onboarding_secode_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/onbording_third_view.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});
  Widget? currentPage(int index) {
    if (index == 0) {
      return const OnBoardingFirstView();
    } else if (index == 1) {
      return const OnBoardingSecodeView();
    } else if (index == 2) {
      return const OnBoardingThirdView();
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnbordingCubit, OnbordingState>(
        builder: (context, state) {
      return Column(
        children: [
          currentPage(context.read<OnbordingCubit>().initialPage)!,
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 15,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return index == context.read<OnbordingCubit>().initialPage
                    ? const ActiveIndecator()
                    : const InActiveIndecator();
              },
            ),
          )
        ],
      );
    });
  }
}
