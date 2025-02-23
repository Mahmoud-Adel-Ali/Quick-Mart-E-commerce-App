import 'package:flutter/material.dart';

import '../../../../core/widgets/app_logo.dart';
import '../../../../core/widgets/custom_simple_app_bar.dart';
import '../widgets/change_password_view_body.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: const AppLogo(),
        showLeading: true,
      ),
      body: ChangePasswordViewBody(),
    );
  }
}
