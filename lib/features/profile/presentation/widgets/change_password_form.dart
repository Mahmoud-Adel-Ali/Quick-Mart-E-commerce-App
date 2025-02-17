import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/functions/validation_of_input_fields.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/custom_toast_message.dart';
import '../manager/cubit/profile_cubit.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({super.key});

  @override
  State<ChangePasswordForm> createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  bool hidePassword = true;
  @override
  void initState() {
    context.read<ProfileCubit>().clearPasswordTextFields();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<ProfileCubit>().changePasswordFormKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: 'Enter Current Password',
            lableText: 'Current Password',
            obscureText: hidePassword,
            controller: context.read<ProfileCubit>().currentPassword,
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
            controller: context.read<ProfileCubit>().newPassword,
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
            controller: context.read<ProfileCubit>().confirmNewPassword,
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
          ChangePasswordButtonBlocConsumer(),
        ],
      ),
    );
  }
}

class ChangePasswordButtonBlocConsumer extends StatelessWidget {
  const ChangePasswordButtonBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is ChangePasswordSuccess) {
          CustomToastMessage().topToast(
            context,
            msg: 'Password changed successfully',
            type: ToastMessageType.success,
          );
          context.pop();
        } else if (state is ChangePasswordFailure) {
          CustomToastMessage().bottomToast(
            context,
            msg: state.errorMessage,
            type: ToastMessageType.error,
          );
        }
      },
      builder: (context, state) {
        return state is ChangePasswordLoading
            ? CircularProgressIndicator(color: context.color.cyan)
            : CustomButton(
                onPressed: () {
                  var cubit = context.read<ProfileCubit>();
                  if (cubit.newPassword.text != cubit.confirmNewPassword.text) {
                    CustomToastMessage().bottomToast(
                      context,
                      msg: "New password and confirm password doesn't match",
                      type: ToastMessageType.error,
                    );
                  } else if (cubit.changePasswordFormKey.currentState!
                      .validate()) {
                    cubit.changePassword();
                  }
                },
                text: 'Change Password',
              );
      },
    );
  }
}
