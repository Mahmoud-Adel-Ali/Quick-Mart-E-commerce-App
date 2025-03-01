import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
      child: Row(
        children: [
          Image.asset(Assets.imagesTestCartImage),
          Expanded(
            child: Column(
              children: const [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    'Product Name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
