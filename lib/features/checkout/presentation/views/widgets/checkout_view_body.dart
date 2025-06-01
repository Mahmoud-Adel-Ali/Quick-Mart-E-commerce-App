import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../constant.dart';
import '../../manager/checkout_cubit/checkout_cubit.dart';
import 'payment_view_body.dart';
import 'review_view_body.dart';
import 'shipping_view_body.dart';

class CheckoutViewBody extends StatelessWidget {
  const CheckoutViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckoutCubit, CheckoutState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(paddingOfView),
          child: body(context),
        );
      },
    );
  }

  Widget body(BuildContext context) {
    int currentPage = context.read<CheckoutCubit>().initialView;
    return currentPage == 1
        ? const ShippingViewBody()
        : currentPage == 2
            ? const PaymentViewBody()
            : const ReviewViewBody();
  }
}
