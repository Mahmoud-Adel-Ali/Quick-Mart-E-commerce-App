import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/product/custom_sub_categories_item.dart';

class SubCategoriesViewBody extends StatelessWidget {
  const SubCategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: CustomSubCategoriesItem(),
          );
        },
      ),
    );
  }
}
