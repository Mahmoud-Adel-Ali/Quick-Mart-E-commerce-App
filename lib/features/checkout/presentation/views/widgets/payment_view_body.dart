import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_images.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../manager/checkout_cubit/checkout_cubit.dart';
import 'checkout_header_section.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 16,
        children: [
          CheckoutHeaderSection(),
          PaymentButton(
            assetPath: Assets.imagesPaypalIcon,
            onTap: () {},
          ),
          PaymentButton(
            assetPath: Assets.imagesGPayIcon,
            onTap: () {},
          ),
          CustomButton(
            onPressed: () {
              context.read<CheckoutCubit>().toReviewOrder();
            },
            text: "Continue",
          ),
        ],
      ),
    );
  }
}

class PaymentButton extends StatelessWidget {
  final String assetPath; // image path
  final VoidCallback onTap;
  final double borderRadius;
  final EdgeInsets padding;

  const PaymentButton({
    super.key,
    required this.assetPath,
    required this.onTap,
    this.borderRadius = 16.0,
    this.padding = const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
          child: SvgPicture.asset(
            assetPath,
            height: 32,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
