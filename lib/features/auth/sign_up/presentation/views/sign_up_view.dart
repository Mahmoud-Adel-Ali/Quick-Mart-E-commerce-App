import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/widgets/app_logo.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/manager/sign_up_cubit/sign_up_cubit.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/sign_up_view_body.dart';

import '../../../../../core/services/services_locator.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: const AppLogo(),
      ),
      body: BlocProvider<SignUpCubit>(
        create: (context) => SignUpCubit(
            authRepoImplementation: getit.get<AuthRepoImplementation>()),
        child: const SignUpViewBody(),
      ),
    );
  }
}
