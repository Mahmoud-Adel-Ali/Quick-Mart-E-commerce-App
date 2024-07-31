import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/functions/validation_of_input_fields.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';

class ForgetPasswordComfirmEmailForm extends StatefulWidget {
  const ForgetPasswordComfirmEmailForm({super.key});

  @override
  State<ForgetPasswordComfirmEmailForm> createState() =>
      _ForgetPasswordComfirmEmailFormState();
}

class _ForgetPasswordComfirmEmailFormState
    extends State<ForgetPasswordComfirmEmailForm> {
  GlobalKey<FormState> myFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: myFormKey,
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomTextFormField(
            hintText: 'Enter Your Email',
            lableText: 'Email',
            validator: (value) {
              return validatorOfEmail(value);
            },
          ),
          const SizedBox(height: 50),
          CustomButton(
            onPressed: () {
              if (myFormKey.currentState!.validate()) {
                context.pushName(AppRoutes.forgetPasswodEmailVerification);
                CustomToastMessage().topToast(context,
                    msg: 'Success : Done', type: ToastMessageType.success);
              } else {
                CustomToastMessage().bottomToast(context,
                    msg: 'Error : fill all fields',
                    type: ToastMessageType.error);
              }
            },
            text: 'Send',
          ),
        ],
      ),
    );
  }
}
