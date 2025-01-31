import 'package:flutter/material.dart';
import 'package:quick_mart_app/features/profile/presentation/widgets/privac_policy_view_body.dart';

import '../widgets/custom_profile_items_app_bar.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customProfileItemsAppBar(context, title: 'Privacy Policy'),
      body: PrivacPolicyViewBody(),
    );
  }
}
