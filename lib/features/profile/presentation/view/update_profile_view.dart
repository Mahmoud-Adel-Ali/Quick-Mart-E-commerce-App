import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/widgets/app_logo.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';

import '../../../../core/services/services_locator.dart';
import '../../../auth/data/repos/auth_repo_implementation.dart';
import '../manager/cubit/profile_cubit.dart';
import '../widgets/update_profile_view_body.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>(
      create: (context) => ProfileCubit(
          authRepoImplementation: getit.get<AuthRepoImplementation>()),
      child: Scaffold(
        appBar: customAppBar(
          context,
          title: const AppLogo(),
          showLeading: true,
        ),
        body: const UpdateProfileViewBody(),
      ),
    );
  }
}
