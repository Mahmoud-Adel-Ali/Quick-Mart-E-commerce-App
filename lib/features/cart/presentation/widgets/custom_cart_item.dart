import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/styles.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: Row(
          children: const [
            CustomCartItemImage(),
            SizedBox(width: 10),
            Expanded(
                child: Column(
              children: [
                CustomCartItemNameAndCheckout(),
                CustomCardItemPrice(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class CustomCardItemPrice extends StatelessWidget {
  const CustomCardItemPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            r'$15.25',
            style: Styless.textSemiBold16(context),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Text(
            r'$25.25',
            style: Styless.textSemiBold14(context).copyWith(
              decoration: TextDecoration.lineThrough,
            ),
          ),
        ),
      ],
    );
  }
}

class CustomCartItemNameAndCheckout extends StatelessWidget {
  const CustomCartItemNameAndCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Loop Silicone Strong Magnetic Watch',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: Checkbox(
        value: true,
        onChanged: (e) {},
        fillColor: WidgetStatePropertyAll(context.color.cyan),
      ),
    );
  }
}

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
