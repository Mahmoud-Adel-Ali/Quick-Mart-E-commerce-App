import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/widgets/email_verification_form.dart';
import 'package:quick_mart_app/core/widgets/email_verification_header.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/cubit/login_cubit.dart';

class ForgetPasswodEmailVerificationViewBody extends StatelessWidget {
  const ForgetPasswodEmailVerificationViewBody({
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
            BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                // on resend code for email
                if (state is SendNumForEmailFailure) {
                  CustomToastMessage().bottomToast(context,
                      msg: 'Error : ${state.errorMessage}',
                      type: ToastMessageType.error);
                } else if (state is SendNumForEmailSuccess) {
                  context.pushName(AppRoutes.forgetPasswodEmailVerification);
                  CustomToastMessage().topToast(context,
                      msg: state.message, type: ToastMessageType.success);
                } //on confirm code num
                else if (state is ConfirmNumSuccess) {
                  context.pushName(AppRoutes.forgetPasswodNewPassword);
                  CustomToastMessage().topToast(context,
                      msg: state.userModel.message ??
                          ' Done : you can change password now',
                      type: ToastMessageType.success);
                } else if (state is ConfirmNumFailure) {
                  CustomToastMessage().bottomToast(context,
                      msg: state.errorMessage, type: ToastMessageType.error);
                }
              },
              builder: (context, state) {
                return state is ConfirmNumLoading
                    ? Center(
                        child: CircularProgressIndicator(
                            color: context.color.cyan),
                      )
                    : EmailVerificationForm(
                        onCompleted: (code) {
                          context.read<LoginCubit>().setConfirmNumCode(code);
                        },
                        onTapProceed: () {
                          if (context.read<LoginCubit>().confirmNumCode == '') {
                            CustomToastMessage().bottomToast(context,
                                msg: 'you should comlete code firs',
                                type: ToastMessageType.error);
                          } else {
                            context.read<LoginCubit>().confirmNum();
                          }
                        },
                        onTapResendCode: () {
                          context.read<LoginCubit>().sentNumForEmail();
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
