// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';
import 'package:quick_mart_app/features/product_details/presentation/widgets/product_description_section.dart';
import 'package:quick_mart_app/features/product_details/presentation/widgets/product_details_images.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductDetailsImages(product: product),
          SizedBox(height: 15),
          ProductDescriptionSection(product: product),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
