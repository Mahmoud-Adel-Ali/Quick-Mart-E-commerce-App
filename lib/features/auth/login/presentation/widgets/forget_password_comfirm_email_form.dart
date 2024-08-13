import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_field.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/functions/validation_of_input_fields.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/cubit/login_cubit.dart';

class ForgetPasswordComfirmEmailForm extends StatelessWidget {
  const ForgetPasswordComfirmEmailForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is SendNumForEmailFailure) {
          CustomToastMessage().bottomToast(context,
              msg: 'Error : ${state.errorMessage}',
              type: ToastMessageType.error);
        } else if (state is SendNumForEmailSuccess) {
          context.pushName(AppRoutes.forgetPasswodEmailVerification);
          CustomToastMessage().topToast(context,
              msg: state.message, type: ToastMessageType.success);
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<LoginCubit>().forgetPasswordComfirmEmailFormkey,
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomTextFormField(
                hintText: 'Enter Your Email',
                lableText: 'Email',
                controller: context.read<LoginCubit>().forgetPasswordEmail,
                validator: (value) {
                  return validatorOfEmail(value);
                },
              ),
              const SizedBox(height: 50),
              CustomButton(
                onPressed: () {
                  if (context
                      .read<LoginCubit>()
                      .forgetPasswordComfirmEmailFormkey
                      .currentState!
                      .validate()) {
                    context.read<LoginCubit>().sentNumForEmail();
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
