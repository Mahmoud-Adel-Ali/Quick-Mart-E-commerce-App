import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/categories/presentation/widgets/categories_view_body.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: Text("Categories",style: Styless.textSemiBold16(context))
      ),
      body: CategoriesViewBody(),
    );
  }
}
