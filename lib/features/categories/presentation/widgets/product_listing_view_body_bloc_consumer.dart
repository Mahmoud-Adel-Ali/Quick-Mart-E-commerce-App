import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/models/all_category_model/category_model.dart';

import '../../../../core/manager/products_cubit/products_cubit.dart';
import 'product_listing_view_body.dart';

class ProductListingViewBodyBlocConsumer extends StatelessWidget {
  const ProductListingViewBodyBlocConsumer({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    log("category id ${category.id}");
    var cubit = context.read<ProductsCubit>();
    cubit.getCategoryProducts(category.id!.toInt());
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state is GetCategoryProductsLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: context.color.cyan,
                ),
              )
            : state is GetCategoryProductsFailure
                ? Center(child: Text(state.errorMessage))
                : state is GetCategoryProductsSuccess
                    ? ProductListingViewBody(category: category)
                    : Container();
      },
    );
  }
}
