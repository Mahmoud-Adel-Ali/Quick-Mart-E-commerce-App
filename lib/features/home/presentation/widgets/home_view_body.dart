import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/constant.dart';
import 'header_of_any_home_section.dart';
import 'home_banner_bloc_builder.dart';
import 'home_category_section.dart';
import 'latest_products_bloc_Builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingOfView),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const HomeBannerBlocBuilder()),
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
          SliverToBoxAdapter(child: LatestProductsBlocBuilder()),
        ],
      ),
    );
  }
}
