import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_card.dart';
import 'package:quick_mart_app/features/home/presentation/widgets/header_of_any_home_section.dart';

class LatestProductsSection extends StatelessWidget {
  const LatestProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderOfAnyHomeSection(
            title: 'Latest Products', onPressedOnSeeAll: () {}),
        SizedBox(height: 12),
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) => CustomProductCard(),
        ),
      ],
    );
  }
}
