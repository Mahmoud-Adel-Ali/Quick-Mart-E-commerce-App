import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/functions/validation_of_input_fields.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Enter Current Password',
            lableText: 'Current Password',
            obscureText: hidePassword,
            validator: (value) {
              return validatorOfPassword(value);
            },
            suffixIcon: IconButton(
              onPressed: () {
                hidePassword = !hidePassword;
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
            hintText: 'Enter New Password',
            lableText: 'New Password',
            obscureText: hidePassword,
            validator: (value) {
              return validatorOfPassword(value);
            },
            suffixIcon: IconButton(
              onPressed: () {
                hidePassword = !hidePassword;
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
            hintText: 'Enter Confirmation Of New Password',
            lableText: 'Confirm New Password',
            obscureText: hidePassword,
            validator: (value) {
              return validatorOfPassword(value);
            },
            suffixIcon: IconButton(
              onPressed: () {
                hidePassword = !hidePassword;
                setState(() {});
              },
              icon: Icon(
                Icons.visibility,
                color: context.color.textColor,
              ),
            ),
          ),
          const SizedBox(height: 40),
          CustomButton(
            onPressed: () {},
            text: 'Change Password',
          ),
        ],
      ),
    );
  }
}
