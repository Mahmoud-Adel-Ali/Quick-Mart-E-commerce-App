import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class CustomCartItemImage extends StatelessWidget {
  const CustomCartItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.33,
      height: double.infinity,
      alignment: Alignment.centerLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          Assets.imagesTestCartImage,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
