import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';
import 'package:quick_mart_app/core/widgets/product/custom_category_card.dart';
import 'package:quick_mart_app/features/home/presentation/widgets/header_of_any_home_section.dart';

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderOfAnyHomeSection(title: 'Categories', onPressedOnSeeAll: () {}),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.only(left: index != 0 ? 4 : 0),
              child: CustomCategoryCard(
                  categoryName: 'Electronics', img: Assets.imagesCategory),
            ),
          ),
        )
      ],
    );
  }
}
