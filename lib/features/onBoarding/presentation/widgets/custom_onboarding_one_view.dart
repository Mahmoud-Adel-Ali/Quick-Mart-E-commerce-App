import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/widgets/on_boarding_header.dart';

class CustomOnboardingOneView extends StatelessWidget {
  const CustomOnboardingOneView({
    super.key,
    required this.leading,
    this.onTapOnSkipForNow,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttons,
  });
  final Widget leading;
  final void Function()? onTapOnSkipForNow;
  final String image;
  final String title;
  final String subtitle;
  final Widget buttons;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * 0.6,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
            // margin: const EdgeInsets.all(18),
            decoration: BoxDecoration(
                color: context.color.onBordingContainerColor,
                borderRadius: BorderRadius.circular(32)),
            child: Column(
              children: [
                OnBorardingHeader(
                  leading: leading,
                  onTapOnSkipForNow: onTapOnSkipForNow,
                ),
                Expanded(child: Image.asset(image)),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Styless.textBold24(context),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Styless.textRegular14(context),
            ),
          ),
          const SizedBox(height: 20),
          buttons,
        ],
      ),
    );
  }
}
