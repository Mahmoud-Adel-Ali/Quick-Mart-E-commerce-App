import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/models/all_category_model/category_model.dart';
import 'package:quick_mart_app/core/widgets/custom_cached_network_image.dart';

import '../../utils/styles.dart';

class CustomCategoryCard extends StatelessWidget {
  const CustomCategoryCard({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
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
      child: Column(
        children: [
          Expanded(
            child: CustomCachedNetworkImage(
              imgUrl: categoryModel.image ?? '',
              height: 50,
            ),
          ),
          SizedBox(height: 10),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              categoryModel.name ?? "unlabled",
              style: Styless.textSemiBold16(context)
                  .copyWith(color: context.color.textColor),
            ),
          ),
        ],
      ),
    );
  }
}
