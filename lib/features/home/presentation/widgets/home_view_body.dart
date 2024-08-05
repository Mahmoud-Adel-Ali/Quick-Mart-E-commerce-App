import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/constant.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_card.dart';
import 'package:quick_mart_app/core/widgets/product/home_banner.dart';
import 'package:quick_mart_app/features/home/presentation/widgets/header_of_any_home_section.dart';
import 'package:quick_mart_app/features/home/presentation/widgets/home_category_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingOfView),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const HomeBanner()),
          SliverToBoxAdapter(child: const SizedBox(height: 12)),
          SliverToBoxAdapter(child: const HomeCategorySection()),
          SliverToBoxAdapter(child: const SizedBox(height: 12)),
          SliverToBoxAdapter(
            child: HeaderOfAnyHomeSection(
              title: 'Latest Products',
              onPressedOnSeeAll: () {},
            ),
          ),
          SliverToBoxAdapter(child: const SizedBox(height: 12)),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.65,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
            ),
            itemBuilder: (context, index) => const CustomProductCard(),
          ),
        ],
      ),
    );

    }
}
