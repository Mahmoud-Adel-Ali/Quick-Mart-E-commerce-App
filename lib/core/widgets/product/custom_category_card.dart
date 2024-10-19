import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard(
      {super.key, required this.categoryName, required this.img});
  final String categoryName;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.color.mainColor,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black12),
      ),
      child: FittedBox(
        fit: BoxFit.cover,
        child: Column(
          children: [
            Image.asset(img),
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
