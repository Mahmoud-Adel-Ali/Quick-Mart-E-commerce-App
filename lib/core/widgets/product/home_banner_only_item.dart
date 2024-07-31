
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_badges.dart';

class HomeBannerOnlyItem extends StatelessWidget {
  const HomeBannerOnlyItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 328 / 148, // 16:9 aspect ratio
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/cc61/3cbf/1b8131ced9da4b0d651e5a8d437e5eb2?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Xiab01at-jKjgn-jx0-853cZ8rbIwPgtgEAsN7KNBiSIl-A0FcrZfBETmfsljdS0TAp9sbtBwP-uCoV88XqP-zTgaPdTW9N8LDkAMd4SLTRGGmGPbnBCcfoErQcOFJCWdVPex-9u3yZrWZo7c6fTgPpvNGBWyCEJsQeP5npfY26UExmEXcJSbAg0RnYuxC0rSRvoYKmuFtYY24W5~24TAcgoOhrKRo6nYGyALwwY~sQWc2S16mhrutj5hDT612aPkVxIkw-i3bSQzO99-ZnXJhqZCP0UO3qpvvyBbutnJkjvv344i2ScnVz9adAfphkzhGjHKRQlFX8yZ8nBAHATWQ__',
            ),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SaleOff(),
            SizedBox(height: 8),
            Text(
              'New Arrivals',
              style: Styless.textRegular12(context)
                  .copyWith(color: context.color.grey50),
            ),
            Text(
              'On Headphones',
              style: Styless.textBold24(context)
                  .copyWith(color: context.color.mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
