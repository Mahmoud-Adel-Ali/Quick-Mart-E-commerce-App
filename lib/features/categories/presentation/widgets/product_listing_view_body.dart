import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_card.dart';

class ProductListingViewBody extends StatelessWidget {
  const ProductListingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: CustomProductCard(),
          );
        },
      ),
    );
  }
}
