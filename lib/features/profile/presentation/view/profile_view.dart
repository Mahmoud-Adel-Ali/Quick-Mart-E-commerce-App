import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/features/profile/presentation/widgets/profile_view_body.dart';

import '../manager/cubit/profile_cubit.dart';
import '../widgets/profile_header.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: context.color.cyan,
          body: const Column(
            children: [
              SizedBox(height: 40),
              ProfileHeader(),
              // SizedBox(height: 40),
              ProfileViewBody(),
            ],
          ),
        );
      },
    );
  }
}
