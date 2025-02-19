
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/manager/products_cubit/products_cubit.dart';

import 'latest_products.dart';

class LatestProductsBlocBuilder extends StatelessWidget {
  const LatestProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return LatestProducts();
      },
    );
  }
}
