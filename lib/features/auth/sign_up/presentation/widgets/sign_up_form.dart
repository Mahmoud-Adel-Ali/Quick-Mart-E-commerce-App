import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/functions/validation_of_input_fields.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          context.pushReplacementNamed(AppRoutes.login);
          CustomToastMessage().topToast(context,
              msg: 'Registration Successful , you can login now',
              type: ToastMessageType.success);
        } else if (state is SignUpFailure) {
          CustomToastMessage().bottomToast(context,
              msg: 'Error : ${state.errorMessage}',
              type: ToastMessageType.error);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<SignUpCubit>().signUpFormKey,
          child: Column(
            children: [
              CustomTextFormField(
                hintText: 'Enter Your Name',
                lableText: 'Full Name',
                controller: context.read<SignUpCubit>().signUpUserName,
                validator: (value) {
                  return validUserName(value);
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Your egyption phone',
                lableText: 'Phone number',
                keyboardType: TextInputType.number,
                controller: context.read<SignUpCubit>().signUpPhoneNumber,
                validator: (value) {
                  return vailEgyptionPhone(value);
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Enter Your Email',
                lableText: 'Email',
                controller: context.read<SignUpCubit>().signUpEmail,
                validator: (value) {
                  return validatorOfEmail(value);
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Enter Your Password',
                lableText: 'Password',
                obscureText: showPassword,
                controller: context.read<SignUpCubit>().signUpPassword,
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
              const SizedBox(height: 10),
              CustomTextFormField(
                hintText: 'Enter ConfirmPassword',
                lableText: 'ConfirmPassword',
                obscureText: showPassword,
                controller: context.read<SignUpCubit>().signUpConfirmPassword,
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
              state is SignUpLoading
                  ? CircularProgressIndicator(color: context.color.cyan)
                  : CustomButton(
                      onPressed: () {
                        if (context.read<SignUpCubit>().signUpPassword.text !=
                            context
                                .read<SignUpCubit>()
                                .signUpConfirmPassword
                                .text) {
                          CustomToastMessage().bottomToast(context,
                              msg: 'Error : Passwords do not match',
                              type: ToastMessageType.error);
                        } else if (context
                            .read<SignUpCubit>()
                            .signUpFormKey
                            .currentState!
                            .validate()) {
                          context.read<SignUpCubit>().signUp();
                        } else {
                          CustomToastMessage().bottomToast(context,
                              msg: 'Error : please fill all fields',
                              type: ToastMessageType.error);
                        }
                      },
                      text: 'Create Account',
                    ),
            ],
          ),
        );
      },
    );
  }
}
