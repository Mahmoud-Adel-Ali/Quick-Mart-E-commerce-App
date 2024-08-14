import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/functions/validation_of_input_fields.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/forget_password_cubit/forget_password_cubit.dart';

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
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
        listener: (context, state) {
      if (state is ChangePasswordFailure) {
        CustomToastMessage().topToast(context,
            msg: state.errorMessage, type: ToastMessageType.error);
      } else if (state is ChangePasswordSuccess) {
        context.pushName(AppRoutes.passwordCreatedSuccessfully);
      }
    }, builder: (context, state) {
      return Form(
        key: context.read<ForgetPasswordCubit>().resetPasswordFormKey,
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomTextFormField(
              hintText: 'Enter Your Password',
              lableText: 'Password',
              obscureText: showPassword,
              controller: context.read<ForgetPasswordCubit>().resetPassword,
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
              controller:
                  context.read<ForgetPasswordCubit>().resetConfirmPassword,
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
            state is ChangePasswordLoading
                ? CircularProgressIndicator(
                    color: context.color.cyan,
                  )
                : CustomButton(
                    onPressed: () {
                      if (context
                              .read<ForgetPasswordCubit>()
                              .resetPassword
                              .text !=
                          context
                              .read<ForgetPasswordCubit>()
                              .resetConfirmPassword
                              .text) {
                        CustomToastMessage().bottomToast(context,
                            msg:
                                'Error : Password and Confirm Password not match',
                            type: ToastMessageType.error);
                        return;
                      } else if (context
                          .read<ForgetPasswordCubit>()
                          .resetPasswordFormKey
                          .currentState!
                          .validate()) {
                        context.read<ForgetPasswordCubit>().changePassword();
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
    });
  }
}
