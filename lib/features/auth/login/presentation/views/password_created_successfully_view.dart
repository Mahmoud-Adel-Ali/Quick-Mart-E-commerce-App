import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/app/app_routes.dart';
import 'package:quick_mart_app/core/app/app_images.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/custom_onboarding_one_view.dart';

class PasswordCreatedSuccessfullyView extends StatelessWidget {
  const PasswordCreatedSuccessfullyView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomOnboardingOneView(
          leading: const Text(''),
          image: Assets.imagesPasswordCreadedSuccess,
          title: 'New password set successfully',
          subtitle:
              'Congratulations! Your password has been set successfully. Please proceed to the login screen to verify your account.',
          buttons: CustomButton(
              onPressed: () {
                context.pushNamedAndRemoveUntil(AppRoutes.login);
              },
              text: 'Login'),
        ),
      ),
    );
  }
}
