import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/manager/cubit/onboarding_cubit.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<OnbordingCubit>(
        create: (context) => OnbordingCubit(),
        child: Builder(builder: (context) {
          return const Scaffold(
            body: OnBoardingViewBody(),
          );
        }),
      ),
    );
  }
}
