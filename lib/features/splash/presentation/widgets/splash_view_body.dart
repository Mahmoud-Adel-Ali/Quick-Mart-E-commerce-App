import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/views/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logoWidth: MediaQuery.sizeOf(context).width * 0.5,
      logo: Image.asset(context.image.quickmartImage, width: 260, height: 70),
      backgroundColor: context.color.mainColor,
      durationInSeconds: 3,
      navigator: const OnBoardingView(),
      showLoader: false,
      loadingText: Text(
        'Asia’s No 1 Ecommerce App',
        style: Styless.textSemiBold14(context),
      ),
    );

    // Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Stack(
    //         children: [
    //           SvgPicture.asset(context.image.quickmartImage),
    //           Positioned(
    //             bottom: -4,
    //             left: 74,
    //             child: Text(
    //               'Asia’s No 1 Ecommerce App',
    //               style: TextStyle(color: context.color.textColor),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
