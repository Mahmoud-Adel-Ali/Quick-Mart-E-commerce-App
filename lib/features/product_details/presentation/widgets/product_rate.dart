

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/product/custom_stars_rating_of_product_details.dart';

class ProductRate extends StatelessWidget {
  const ProductRate({super.key});

  @override
  Widget build(BuildContext context) {
    double myRandom = Random().nextDouble() * 5;
    return Row(
      children: [
        CustomStarsRatingOfProductDetails(rating: myRandom),
        Text(myRandom.toString().substring(0,3)),
        Text(' (${(myRandom*256).toInt().toString()} Reviews)'),
      ],
    );
  }

  
}