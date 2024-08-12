import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/functions/validation_of_input_fields.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';

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
            hintText: 'Your egyption phone',
            lableText: 'Phone number',
            keyboardType: TextInputType.number,
            validator: (value) {
              return vailEgyptionPhone(value);
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
              icon: showPassword
                  ? Icon(
                      Icons.visibility_off,
                      color: context.color.textColor,
                    )
                  : Icon(
                      Icons.visibility,
                      color: context.color.textColor,
                    ),
            ),
          ),
          const SizedBox(height: 50),
          CustomTextFormField(
            hintText: 'Enter ConfirmPassword',
            lableText: 'ConfirmPassword',
            obscureText: showPassword,
            validator: (value) {
              return validatorOfPassword(value);
            },
            suffixIcon: IconButton(
              onPressed: () {
                showPassword = !showPassword;
                setState(() {});
              },
              icon: showPassword
                  ? Icon(
                      Icons.visibility_off,
                      color: context.color.textColor,
                    )
                  : Icon(
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
                    msg:
                        '6-digit Verification code has been send to your email address.',
                    type: ToastMessageType.success);
                context.pushName(AppRoutes.emailVerification);
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
