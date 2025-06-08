import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_button.dart';
import '../../../../../core/widgets/custom_drop_down.dart';
import '../../../../../core/widgets/custom_phone_text_form_field.dart';
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
          CustomPhoneTextFormField(),
          CustomDropdownFeild(
            hintText: 'Select Province',
            items: const [],
            onChanged: (value) {},
            validator: (value) {
              return null;
            },
          ),
          CustomDropdownFeild(
            hintText: 'Select City',
            items: const ['cairo', 'alex', 'giza', 'aswan'],
            onChanged: (value) {},
            validator: (value) {
              return null;
            },
          ),
          CustomTextFormField(
            lableText: 'Street Address',
            hintText: 'Enter Your Street Address',
          ),
          CustomTextFormField(
            lableText: 'Postal Code',
            hintText: 'Enter Your Postal Code',
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
