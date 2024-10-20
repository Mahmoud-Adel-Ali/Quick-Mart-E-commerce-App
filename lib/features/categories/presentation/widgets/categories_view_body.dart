import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/widgets/product/custom_category_card.dart';

class CategoriesViewBody extends StatelessWidget {
  const CategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1.5,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.subCategoriesView);
            },
            child: CustomCategoryCard(
                categoryName: "Electronics", img: Assets.imagesCategory),
          );
        },
      ),
    );
  }
}
