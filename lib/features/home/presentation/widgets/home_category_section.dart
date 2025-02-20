import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/manager/products_cubit/products_cubit.dart';
import 'package:quick_mart_app/core/models/all_category_model/category_model.dart';
import 'package:quick_mart_app/core/widgets/product/custom_category_card.dart';
import 'package:quick_mart_app/features/home/presentation/widgets/header_of_any_home_section.dart';

class HomeCategorySection extends StatelessWidget {
  const HomeCategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderOfAnyHomeSection(title: 'Categories', onPressedOnSeeAll: () {}),
        BlocConsumer<ProductsCubit, ProductsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state is GetAllCategoriesLoading
                ? Center(child: CircularProgressIndicator())
                : SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          context.read<ProductsCubit>().allcategories.length,
                      itemBuilder: (context, index) {
                        CategoryModel category =
                            context.read<ProductsCubit>().allcategories[index];
                        return Padding(
                          padding: EdgeInsets.only(left: index != 0 ? 4 : 0),
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: CustomCategoryCard(categoryModel: category),
                          ),
                        );
                      },
                    ),
                  );
          },
        )
      ],
    );
  }
}
