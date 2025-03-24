
import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class CustomCartItemImage extends StatelessWidget {
  const CustomCartItemImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image.asset(
        Assets.imagesTestCartImage,
        height: 150,
        width: 150,
      ),
    );
  }
}
