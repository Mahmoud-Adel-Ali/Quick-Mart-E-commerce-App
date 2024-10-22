import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/custom_cached_network_image.dart';
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
      aspectRatio: 1.2,
      child: Container(
        padding: const EdgeInsets.only(right: 16, top: 16),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          image: customCachedNetworkImageprovider(imgPath),
        ),
        alignment: Alignment.topRight,
        child: const CustomWishIcon(),
      ),
    );
  }
}
