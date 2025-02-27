import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class VoucherCodeForm extends StatelessWidget {
  const VoucherCodeForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 32),
          CustomTextFormField(
            hintText: 'Enter Your Voucher Code',
            lableText: 'Voucher Code',
          ),
          SizedBox(height: 24),
          CustomButton(
              text: 'Apply',
              onPressed: () {
                context.pop();
              }),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
