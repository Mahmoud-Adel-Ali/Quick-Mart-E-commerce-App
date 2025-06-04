import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../manager/checkout_cubit/checkout_cubit.dart';
import 'checkout_header_section.dart';

class PaymentViewBody extends StatelessWidget {
  const PaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          CheckoutHeaderSection(),
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
