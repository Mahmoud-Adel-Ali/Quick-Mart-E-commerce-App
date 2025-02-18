import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/widgets/custom_indecator.dart';
import 'package:quick_mart_app/core/widgets/product/home_banner_image.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key});

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  int currentIndex = 0, numOfDot = 5;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ExpandablePageView(
          onPageChanged: (index) {
            currentIndex = index;
            setState(() {});
          },
          children: List.generate(
            numOfDot,
            (index) => HomeBannerImage(
              imageUrl: '',
            ),
          ),
        ),
        Positioned(
          bottom: 16.0,
          right: 16.0,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              color: context.color.mainColor,
              borderRadius: BorderRadius.circular(32.0),
            ),
            child: CustomIndecator(
                numOfIndecator: numOfDot,
                activeIndecatorPosition: currentIndex),
          ),
        )
      ],
    );
  }
}
