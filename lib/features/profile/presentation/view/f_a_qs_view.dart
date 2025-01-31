import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../widgets/f_a_qs_view_body.dart';

class FAQsView extends StatelessWidget {
  const FAQsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQs'),
        backgroundColor: context.color.mainColor,
        flexibleSpace: Container(color: context.color.mainColor),
      ),
      body: FAQsViewBody(),
    );
  }
}
