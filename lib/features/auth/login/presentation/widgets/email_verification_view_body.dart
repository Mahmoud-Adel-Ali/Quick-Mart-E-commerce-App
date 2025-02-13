import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/widgets/custom_email_verification_form.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/widgets/email_verification_header.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/forget_password_cubit/forget_password_cubit.dart';

class EmailVerificationViewBody extends StatelessWidget {
  const EmailVerificationViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            const EmaillVerificationHeader(),
            const SizedBox(height: 30),
            BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
              listener: (context, state) {
                // on resend code for email
                if (state is VerifyEmailFailure) {
                  CustomToastMessage().bottomToast(context,
                      msg: 'Error : ${state.errorMessage}',
                      type: ToastMessageType.error);
                } else if (state is VerifyEmailSuccess) {
                  CustomToastMessage().topToast(context,
                      msg:
                          '6-digit Verification code has been send to your email address.',
                      type: ToastMessageType.success);
                } //on confirm code num
                else if (state is VerifyCodeSuccess) {
                  context.read<ForgetPasswordCubit>().toThirdView();
                  CustomToastMessage().topToast(context,
                      msg: state.authModel.message,
                      type: ToastMessageType.success);
                } else if (state is VerifyCodeFailure) {
                  CustomToastMessage().bottomToast(context,
                      msg: state.errorMessage, type: ToastMessageType.error);
                }
              },
              builder: (context, state) {
                return state is VerifyCodeLoading
                    ? Center(
                        child: CircularProgressIndicator(
                            color: context.color.cyan),
                      )
                    : CustomEmailVerificationForm(
                        onCompleted: (code) {
                          context
                              .read<ForgetPasswordCubit>()
                              .setVerifyCode(code);
                        },
                        onTapProceed: () {
                          if (context
                              .read<ForgetPasswordCubit>()
                              .verifyCodeCode
                              .isEmpty) {
                            CustomToastMessage().bottomToast(context,
                                msg: 'you should comlete code firs',
                                type: ToastMessageType.error);
                          } else {
                            context.read<ForgetPasswordCubit>().verifyCode();
                          }
                        },
                        onTapResendCode: () {
                          context.read<ForgetPasswordCubit>().verifyEmail();
                        },
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}
