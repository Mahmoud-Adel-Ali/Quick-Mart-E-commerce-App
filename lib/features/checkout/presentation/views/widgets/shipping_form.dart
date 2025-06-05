import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../manager/checkout_cubit/checkout_cubit.dart';

class ShippingForm extends StatelessWidget {
  const ShippingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 12,
        children: [
          CustomTextFormField(
            lableText: 'First Name',
            hintText: 'Enter Your First Name',
          ),
          CustomButton(
            onPressed: () {
              context.read<CheckoutCubit>().toPaymentView();
            },
            text: "Save",
          ),
        ],
      ),
    );
  }
}
