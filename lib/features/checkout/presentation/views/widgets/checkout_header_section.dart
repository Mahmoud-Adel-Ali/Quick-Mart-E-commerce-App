import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../../core/utils/app_images.dart';
import '../../manager/checkout_cubit/checkout_cubit.dart';
import 'checkout_header_divider.dart';
import 'checkout_header_icon.dart';

class CheckoutHeaderSection extends StatelessWidget {
  const CheckoutHeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage = context.read<CheckoutCubit>().initialView;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CheckoutHeaderIcon(
            iconPath: currentPage > 1
                ? Assets.imagesShippingCyanIcon
                : context.image.shippingIcon,
            iconTitle: "Shipping",
            isActive: currentPage > 1 ? true : false,
          ),
          CheckoutHeaderDivider(),
          CheckoutHeaderIcon(
            iconPath: currentPage > 2
                ? Assets.imagesPaymentCyanIcon
                : currentPage == 2
                    ? context.image.paymentIcon
                    : Assets.imagesPaymentGrayIcon,
            iconTitle: "Payment",
            isActive: currentPage > 2 ? true : false,
          ),
          CheckoutHeaderDivider(),
          CheckoutHeaderIcon(
            iconPath: currentPage == 3
                ? context.image.reviewIcon
                : Assets.imagesReviewGrayIcon,
            iconTitle: "Review",
            isActive: currentPage > 3 ? true : false,
          ),
        ],
      ),
    );
  }
}
