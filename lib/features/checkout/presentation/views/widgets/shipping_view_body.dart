import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../manager/checkout_cubit/checkout_cubit.dart';

class ShippingViewBody extends StatelessWidget {
  const ShippingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomButton(
        onPressed: () {
          context.read<CheckoutCubit>().toPaymentView();
        },
        text: "Save",
      ),
    );
  }
}
