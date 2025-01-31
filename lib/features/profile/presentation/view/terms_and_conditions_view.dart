import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../widgets/terms_and_conditions_view_body.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Terms & Conditions'),
        backgroundColor: context.color.mainColor,
        flexibleSpace: Container(color: context.color.mainColor),
      ),
      body: TermsAndConditionsViewBody(),
    );
  }
}
