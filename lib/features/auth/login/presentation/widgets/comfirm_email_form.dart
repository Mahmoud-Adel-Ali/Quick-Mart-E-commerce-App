import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/functions/validation_of_input_fields.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/forget_password_cubit/forget_password_cubit.dart';

class ComfirmEmailForm extends StatelessWidget {
  const ComfirmEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is SendNumForEmailFailure) {
          CustomToastMessage().bottomToast(context,
              msg: 'Error : ${state.errorMessage}',
              type: ToastMessageType.error);
        } else if (state is SendNumForEmailSuccess) {
          context.read<ForgetPasswordCubit>().toSecondView();
          CustomToastMessage().topToast(context,
              msg:
                  '6-digit Verification code has been send to your email address.',
              type: ToastMessageType.success);
        }
      },
      builder: (context, state) {
        return Form(
          key: context
              .read<ForgetPasswordCubit>()
              .forgetPasswordComfirmEmailFormkey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Enter Your Email',
                lableText: 'Email',
                controller:
                    context.read<ForgetPasswordCubit>().forgetPasswordEmail,
                validator: (value) {
                  return validatorOfEmail(value);
                },
              ),
              const SizedBox(height: 50),
              state is SendNumForEmailLoading
                  ? CircularProgressIndicator(color: context.color.cyan)
                  : CustomButton(
                      onPressed: () {
                        if (context
                            .read<ForgetPasswordCubit>()
                            .forgetPasswordComfirmEmailFormkey
                            .currentState!
                            .validate()) {
                          context.read<ForgetPasswordCubit>().sentNumForEmail();
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
      },
    );
  }
}
