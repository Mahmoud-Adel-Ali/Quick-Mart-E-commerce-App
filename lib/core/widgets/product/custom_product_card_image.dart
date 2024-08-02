import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/product/custom_wish_icon.dart';

class CustomProductCardImage extends StatelessWidget {
  const CustomProductCardImage({
    super.key,
    required this.imgPath,
  });

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 160 / 138,
      child: Container(
        padding: const EdgeInsets.only(right: 16, top: 16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          color: Colors.grey[200],
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(imgPath),
          ),
        ),
        alignment: Alignment.topRight,
        child: const CustomWishIcon(),
      ),
    );
  }
}
