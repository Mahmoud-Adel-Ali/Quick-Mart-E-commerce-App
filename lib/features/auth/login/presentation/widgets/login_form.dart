import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/services/services_locator.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/functions/validation_of_input_fields.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/login_cubit/login_cubit.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/forget_password_text_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          context.pushReplacementNamed(AppRoutes.quickMartAppViews);
          getit.get<CacheHelper>().setBoolean(CachKeys.isLoggedIn, true);
          CustomToastMessage().topToast(context,
              msg: 'Success : Done', type: ToastMessageType.success);
        } else if (state is LoginFailure) {
          CustomToastMessage().bottomToast(context,
              msg: state.errorMessage, type: ToastMessageType.error);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<LoginCubit>().loginFormKey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Enter Your Email',
                lableText: 'Email',
                controller: context.read<LoginCubit>().loginEmail,
                validator: (value) {
                  return validatorOfEmail(value);
                },
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Enter Your Password',
                lableText: 'Password',
                obscureText: showPassword,
                controller: context.read<LoginCubit>().loginPassword,
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
              ForgetPasswordTextButton(),
              const SizedBox(height: 50),
              state is LoginLoading
                  ? CircularProgressIndicator(color: context.color.cyan)
                  : CustomButton(
                      onPressed: () {
                        if (context
                            .read<LoginCubit>()
                            .loginFormKey
                            .currentState!
                            .validate()) {
                          context.read<LoginCubit>().login();
                        } else {
                          CustomToastMessage().bottomToast(context,
                              msg: 'Please fill all fields',
                              type: ToastMessageType.info);
                        }
                      },
                      text: 'Login',
                    ),
            ],
          ),
        );
      },
    );
  }
}
