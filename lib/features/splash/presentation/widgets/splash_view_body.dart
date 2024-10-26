// ignore_for_file: use_build_context_synchronously

import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/services/services_locator.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/views/quick_mart_app_views.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/login_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  final int durationInSeconds = 7;

  Future<void> checkLoginStatus() async {
    final bool isLoggedIn =
        getit.get<CacheHelper>().getBoolean(CachKeys.isLoggedIn) ?? false;
    final onBoardingIsViewing =
        getit<CacheHelper>().getBoolean(CachKeys.onBoardingIsViewing) ?? false;
    // Optional: Delay to show the splash screen for a short time
    await Future.delayed(Duration(seconds: durationInSeconds));

    if (!onBoardingIsViewing) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingView()),
      );
    } else if (isLoggedIn) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => QuickMartAppViews()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginView()),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    checkLoginStatus();
  }

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: MediaQuery.sizeOf(context).width * 0.5,
      logo: Image.asset(context.image.quickmartImage),
      backgroundColor: context.color.mainColor,
      durationInSeconds: durationInSeconds,
      showLoader: false,
      loadingText: Text(
        'Asia’s No 1 Ecommerce App',
        style: Styless.textSemiBold14(context),
      ),
    );
  }
}
