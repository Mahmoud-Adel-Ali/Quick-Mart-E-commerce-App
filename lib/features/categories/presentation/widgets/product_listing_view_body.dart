import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/manager/products_cubit/products_cubit.dart';
import 'package:quick_mart_app/core/models/product_model/category.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_card.dart';

class ProductListingViewBody extends StatelessWidget {
  const ProductListingViewBody({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    final List<ProductModel> products =
        context.read<ProductsCubit>().categoryMap[category.id] ?? [];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return CustomProductCard(
            product: products[index],
          );
        },
      ),
    );
  }
}
