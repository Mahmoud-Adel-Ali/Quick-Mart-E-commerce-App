import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/on_boarding_header.dart';

class OnBoardingFirstView extends StatelessWidget {
  const OnBoardingFirstView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.6,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
          margin: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              color: context.color.onBordingContainerColor,
              borderRadius: BorderRadius.circular(32)),
          child: Column(
            children: [
              OnBorardingHeader(
                leading: SvgPicture.asset(
                  context.image.quickmartImage,
                  height: 35,
                ),
                onTapOnSkipForNow: (){},
              ),
              Expanded(child: Image.asset(Assets.imagesOnBoarding1)),
            ],
          ),
        ),
      ],
    );
  }
}
