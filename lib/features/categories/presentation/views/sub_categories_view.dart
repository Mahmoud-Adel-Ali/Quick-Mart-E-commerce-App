import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/categories/presentation/widgets/sub_categories_view_body.dart';

class SubCategoriesView extends StatelessWidget {
  const SubCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: Text(
          "Categories Name",
          style: Styless.textSemiBold16(context),
        ),
        showLeading: true,
        onTapOnLeading: () {
          Navigator.of(context).pop();
        },
      ),
      body: SubCategoriesViewBody(),
    );
  }
}
