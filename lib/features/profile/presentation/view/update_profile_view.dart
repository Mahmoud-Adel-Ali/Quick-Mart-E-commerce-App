import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/app_logo.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';

import '../widgets/update_profile_view_body.dart';

class UpdateProfileView extends StatelessWidget {
  const UpdateProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: const AppLogo(),
        showLeading: true,
      ),
      body: const UpdateProfileViewBody(),
    );
  }
}
