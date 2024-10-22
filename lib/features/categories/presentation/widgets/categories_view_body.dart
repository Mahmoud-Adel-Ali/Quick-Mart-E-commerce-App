import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/manager/products_cubit/products_cubit.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';
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
        itemCount: context.read<ProductsCubit>().allcategories.length,
        itemBuilder: (context, index) {
          String category = context.read<ProductsCubit>().allcategories[index];
          Map<String, List<ProductModel>> categoryMap =
              context.read<ProductsCubit>().categoryMap;
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.productListingView);
            },
            child: CustomCategoryCard(
                categoryName: category,
                imgPath: categoryMap[category]?.last.image ?? ""),
          );
        },
      ),
    );
  }
}
