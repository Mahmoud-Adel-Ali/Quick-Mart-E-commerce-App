import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/api/dio_consumer.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:quick_mart_app/features/auth/login/presentation/manager/cubit/login_cubit.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/forget_password_comfirm_email_view_body.dart';

class ForgetPasswordComfirmEmailView extends StatelessWidget {
  const ForgetPasswordComfirmEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<LoginCubit>(
        create: (context) => LoginCubit(
            authRepoImplementation:
                AuthRepoImplementation(dio: DioConsumer(dio: Dio()))),
        child: Scaffold(
          appBar: customAppBar(context,
              title: Text('Forgot Password',
                  style: Styless.textSemiBold14(context)),
              onTapOnLeading: () =>
                  context.pushNamedAndRemoveUntil(AppRoutes.login)),
          body: ForgetPasswordComfirmEmailViewBody(),
        ),
      ),
    );
  }
}