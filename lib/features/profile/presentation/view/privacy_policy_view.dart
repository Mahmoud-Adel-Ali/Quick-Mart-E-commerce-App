import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/features/profile/presentation/widgets/privac_policy_view_body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy Policy'),
        backgroundColor: context.color.mainColor,
        flexibleSpace: Container(color: context.color.mainColor),
      ),
      body: PrivacPolicyViewBody(),
    );
  }
}
