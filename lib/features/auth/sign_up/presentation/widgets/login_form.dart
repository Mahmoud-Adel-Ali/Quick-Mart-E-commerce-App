import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_button.dart';
import 'package:quick_mart_app/core/app/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/app/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/auth/manager/functions/valid.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPassword = true;
  GlobalKey<FormState> loginFormKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginFormKey,
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
          Container(
            width: double.infinity,
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                context.pushName(AppRoutes.forgetPasswordComfirmEmail);
              },
              child: Text(
                'Forgot password?',
                style: Styless.textSemiBold14(context)
                    .copyWith(color: context.color.cyan),
              ),
            ),
          ),
          const SizedBox(height: 50),
          CustomButton(
            onPressed: () {
              if (loginFormKey.currentState!.validate()) {
                CustomToastMessage().topToast(context,
                    msg: 'Success : Done', type: ToastMessageType.success);
              } else {
                CustomToastMessage().bottomToast(context,
                    msg: 'Error : fill all fields',
                    type: ToastMessageType.error);
              }
            },
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
