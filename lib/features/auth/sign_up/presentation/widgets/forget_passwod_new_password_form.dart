import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/app/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/app/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/features/auth/manager/functions/valid.dart';

class ForgetPasswodNewPasswordForm extends StatefulWidget {
  const ForgetPasswodNewPasswordForm({super.key});

  @override
  State<ForgetPasswodNewPasswordForm> createState() =>
      _ForgetPasswodNewPasswordFormState();
}

class _ForgetPasswodNewPasswordFormState
    extends State<ForgetPasswodNewPasswordForm> {
  bool showPassword = true;
  bool showConfirmPassword = true;
  GlobalKey<FormState> nePasswordForm = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: nePasswordForm,
      child: Column(
        children: [
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
          const SizedBox(height: 20),
          CustomTextFormField(
            hintText: 'Enter Your Confirm Password',
            lableText: 'Confirm Password',
            obscureText: showConfirmPassword,
            validator: (value) {
              return validatorOfPassword(value);
            },
            suffixIcon: IconButton(
              onPressed: () {
                showConfirmPassword = !showConfirmPassword;
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
              if (nePasswordForm.currentState!.validate()) {
                context.pushName(AppRoutes.passwordCreatedSuccessfully);
                CustomToastMessage().topToast(context,
                    msg: 'Success : Done', type: ToastMessageType.success);
              } else {
                CustomToastMessage().bottomToast(context,
                    msg: 'Error : fill all fields',
                    type: ToastMessageType.error);
              }
            },
            text: 'Save',
          ),
        ],
      ),
    );
  }
}
