import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/api/dio_consumer.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/forget_password_cubit/forget_password_cubit.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/email_verification_view_body.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/new_password_view_body.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/comfirm_email_view_body.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgetPasswordCubit>(
      create: (context) => ForgetPasswordCubit(
        authRepoImplementation:
            AuthRepoImplementation(dio: DioConsumer(dio: Dio())),
      ),
      child: BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
        builder: (context, state) {
          final currentView =
              context.read<ForgetPasswordCubit>().cuurentViewOfForgetPassword;
          if (currentView == 1) {
            return ComfirmEmailViewBody();
          } else if (currentView == 2) {
            return EmailVerificationViewBody();
          } else {
            return NewPasswordViewBody();
          }
        },
      ),
    );
  }
}
