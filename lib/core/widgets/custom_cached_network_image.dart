import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/colors/colors_light.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage(
      {super.key, required this.imgUrl, this.height, this.width});
  final String imgUrl;
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imgUrl,
      height: height,
      width: width,
      fit: BoxFit.fill,
      errorWidget: ((context, error, stackTrace) =>
          const Icon(Icons.account_circle)),
      placeholder: (context, url) => const Center(
        child: CircularProgressIndicator(
          color: ColorsLight.cyan50General,
        ),
      ),
    );
  }
}

customCachedNetworkImageprovider(String imgPath) {
  return DecorationImage(
      fit: BoxFit.fill, image: CachedNetworkImageProvider(imgPath));
}
