import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_cached_network_image.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard(
      {super.key, required this.categoryName, required this.imgPath});
  final String categoryName;
  final String imgPath;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.color.mainColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Column(
          children: [
            CustomCachedNetworkImage(
              imgUrl: imgPath,
              height: 50,
            ),
            SizedBox(height: 10),
            Text(
              categoryName,
              style: Styless.textSemiBold12(context)
                  .copyWith(color: context.color.textColor),
            ),
          ],
        ),
      ),
    );
  }
}
