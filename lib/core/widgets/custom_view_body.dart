import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/styles.dart';
import '../../../../core/widgets/custom_button.dart';

class CustomViewBody extends StatelessWidget {
  const CustomViewBody({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
    required this.textButton,
    this.onPressedOnButton,
  });
  final String img, title, subtitle, textButton;
  final VoidCallback? onPressedOnButton;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const SizedBox(height: 20),
          Expanded(
            flex: 8,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
              decoration: BoxDecoration(
                  color: context.color.grey50,
                  borderRadius: BorderRadius.circular(32)),
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  Flexible(
                    flex: 10,
                    child: Image.asset(Assets.imagesCheckoutSuccess),
                  ),
                  Expanded(child: SizedBox()),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: Styless.textBold24(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Text(
              subtitle,
              textAlign: TextAlign.center,
              style: Styless.textRegular14(context),
            ),
          ),
          CustomButton(
            text: textButton,
            onPressed: onPressedOnButton,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
