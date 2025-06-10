import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_field.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../manager/checkout_cubit/checkout_cubit.dart';

class PaymentForm extends StatelessWidget {
  const PaymentForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 18,
      children: [
        CustomTextFormField(
          lableText: 'Card Holder Name',
          hintText: 'Enter card holder name',
        ),
        CustomTextFormField(
          lableText: 'Card Number',
          hintText: '4111 1111 1111 1111',
        ),
        Row(
          children: const [
            Expanded(
              child: CustomTextFormField(
                lableText: 'Expiry Date',
                hintText: 'MM/YY',
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: CustomTextFormField(
                lableText: 'CVV',
                hintText: '123',
              ),
            ),
          ],
        ),
        Expanded(child: SizedBox()),
        CustomButton(
          onPressed: () {
            context.read<CheckoutCubit>().toReviewOrder();
          },
          text: "Continue",
        ),
      ],
    );
  }
}
