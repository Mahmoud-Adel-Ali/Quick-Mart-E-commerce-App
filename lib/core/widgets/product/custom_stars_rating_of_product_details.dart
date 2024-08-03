import 'package:flutter/material.dart';

class CustomStarsRatingOfProductDetails extends StatelessWidget {
  const CustomStarsRatingOfProductDetails({super.key, required this.rating});
  final num rating;
  @override
  Widget build(BuildContext context) {
    double remaning = (rating - rating.toInt()).toDouble();
    return Row(
      children: [
        Row(
          children: List.generate(
            rating.toInt(),
            (index) {
              return OneStare();
            },
          ),
        ),
        OneStare(percent: remaning)
      ],
    );
  }
}

class OneStare extends StatelessWidget {
  const OneStare({super.key, this.percent = 1});
  final double percent;
  @override
  Widget build(BuildContext context) {
    return Icon(
      percent >= 1
          ? Icons.star
          : percent <= 0
              ? null
              : Icons.star_half,
      color: Colors.amber,
    );
  }
}
