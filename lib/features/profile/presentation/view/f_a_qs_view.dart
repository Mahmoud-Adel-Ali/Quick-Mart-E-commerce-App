import 'package:flutter/material.dart';

import '../widgets/custom_profile_items_app_bar.dart';
import '../widgets/f_a_qs_view_body.dart';

class FAQsView extends StatelessWidget {
  const FAQsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customProfileItemsAppBar(context, title: 'FAQs'),
      body: FAQsViewBody(),
    );
  }
}
