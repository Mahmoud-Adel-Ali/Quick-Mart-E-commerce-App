import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/product/home_banner.dart';
import 'package:quick_mart_app/features/home/presentation/widgets/home_category_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: const Column(
        children: [
          HomeBanner(),
          SizedBox(height: 12),
          HomeCategorySection(),
        ],
      ),
    );
  }
}
