import 'package:flutter/material.dart';

import '../widgets/custom_profile_items_app_bar.dart';
import '../widgets/terms_and_conditions_view_body.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customProfileItemsAppBar(context, title: 'Terms & Conditions'),
      body: TermsAndConditionsViewBody(),
    );
  }
}
