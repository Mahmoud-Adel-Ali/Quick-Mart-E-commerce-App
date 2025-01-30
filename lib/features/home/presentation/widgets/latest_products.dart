import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/manager/products_cubit/products_cubit.dart';
import '../../../../core/widgets/product/custom_product_card.dart';

class LatestProducts extends StatelessWidget {
  const LatestProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.65,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
      ),
      itemCount: min(10, context.read<ProductsCubit>().allProducts.length),
      itemBuilder: (context, index) => CustomProductCard(
        product: context.read<ProductsCubit>().allProducts[index],
      ),
    );
  }
}
