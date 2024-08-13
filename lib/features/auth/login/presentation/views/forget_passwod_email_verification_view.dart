import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/api/dio_consumer.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';
import 'package:quick_mart_app/core/widgets/email_verification_form.dart';
import 'package:quick_mart_app/core/widgets/email_verification_header.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/cubit/login_cubit.dart';

class ForgetPasswodEmailVerificationView extends StatelessWidget {
  const ForgetPasswodEmailVerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => LoginCubit(
          authRepoImplementation:
              AuthRepoImplementation(dio: DioConsumer(dio: Dio()))),
      child: SafeArea(
        child: Scaffold(
          appBar: customAppBar(context,
              title: Text('Forgot Password',
                  style: Styless.textSemiBold14(context)),
              onTapOnLeading: () =>
                  context.pushNamedAndRemoveUntil(AppRoutes.login)),
          body: Padding(
            padding: const EdgeInsets.all(18.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const EmaillVerificationHeader(),
                  const SizedBox(height: 30),
                  BlocConsumer<LoginCubit, LoginState>(
                    listener: (context, state) {
                      if (state is SendNumForEmailFailure) {
                        CustomToastMessage().bottomToast(context,
                            msg: 'Error : ${state.errorMessage}',
                            type: ToastMessageType.error);
                      } else if (state is SendNumForEmailSuccess) {
                        context
                            .pushName(AppRoutes.forgetPasswodEmailVerification);
                        CustomToastMessage().topToast(context,
                            msg: state.message, type: ToastMessageType.success);
                      } else if (state is ConfirmNumSuccess) {
                        context.pushName(AppRoutes.forgetPasswodNewPassword);
                        CustomToastMessage().topToast(context,
                            msg: state.userModel.message ??
                                ' Done : you can change password now',
                            type: ToastMessageType.success);
                      } else if (state is ConfirmNumFailure) {
                        CustomToastMessage().bottomToast(context,
                            msg: state.errorMessage,
                            type: ToastMessageType.error);
                      }
                    },
                    builder: (context, state) {
                      return state is ConfirmNumLoading
                          ? Center(
                              child: CircularProgressIndicator(
                              color: context.color.cyan,
                            ))
                          : EmailVerificationForm(
                              onCompleted: (code) {
                                context
                                    .read<LoginCubit>()
                                    .setConfirmNumCode(code);
                              },
                              onTapProceed: () {
                                if (context.read<LoginCubit>().confirmNumCode ==
                                    '') {
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
          ),
        ),
      ),
    );
  }
}
