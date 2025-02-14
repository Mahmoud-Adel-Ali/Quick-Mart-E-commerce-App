import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/features/profile/presentation/widgets/profile_view_body.dart';

import '../../../../core/services/services_locator.dart';
import '../../../auth/data/repos/auth_repo_implementation.dart';
import '../manager/cubit/profile_cubit.dart';
import '../widgets/profile_header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProfileCubit>(
      create: (context) => ProfileCubit(
          authRepoImplementation: getit.get<AuthRepoImplementation>()),
      child: Scaffold(
        backgroundColor: context.color.cyan,
        body: const Column(
          children: [
            SizedBox(height: 40),
            ProfileHeader(),
            // SizedBox(height: 40),
            ProfileViewBody(),
          ],
        ),
      ),
    );
  }
}
