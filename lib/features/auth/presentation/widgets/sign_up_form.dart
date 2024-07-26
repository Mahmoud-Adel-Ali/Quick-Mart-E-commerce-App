import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/app/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/app/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/features/auth/manager/functions/valid.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool showPassword = true;
  GlobalKey<FormState> signUpFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: signUpFormKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Enter Your Name',
            lableText: 'Full Name',
            validator: (value) {
              return validUserName(value);
            },
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            hintText: 'Enter Your Email',
            lableText: 'Email',
            validator: (value) {
              return validatorOfEmail(value);
            },
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            hintText: 'Enter Your Password',
            lableText: 'Password',
            obscureText: showPassword,
            validator: (value) {
              return validatorOfPassword(value);
            },
            suffixIcon: IconButton(
              onPressed: () {
                showPassword = !showPassword;
                setState(() {});
              },
              icon: Icon(
                Icons.visibility,
                color: context.color.textColor,
              ),
            ),
          ),
          const SizedBox(height: 50),
          CustomButton(
            onPressed: () {
              if (signUpFormKey.currentState!.validate()) {
                CustomToastMessage().topToast(context,
                    msg: 'Success : Done', type: ToastMessageType.success);
              } else {
                CustomToastMessage().bottomToast(context,
                    msg: 'Error : fill all fields',
                    type: ToastMessageType.error);
              }
            },
            text: 'Create Account',
          ),
        ],
      ),
    );
  }
}
