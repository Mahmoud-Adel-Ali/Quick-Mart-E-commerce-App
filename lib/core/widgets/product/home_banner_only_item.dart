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
        padding: const EdgeInsets.all(24),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://s3-alpha-sig.figma.com/img/cc61/3cbf/1b8131ced9da4b0d651e5a8d437e5eb2?Expires=1730678400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=iJQuEeiKyEYCF65-QwKDUUvTElb7WKJ~wnBcRQUjKvv03eJpX~dofA73SItCHHgeqJooVh29NJql8JIdKGoMzTv6SRI2g7aR9j6z4gEX~~Kg6eDh3CqbT3Xy8Z-90VfvuOAqn1b3tuCzn2FqSk9UvpGroY80q-WIH6esQyQTlr2ZEQLhfyQyLDIHCLNt3Fpd-T60RESbAM~ejh6bV1nH65cZSQThxOv3e76hweu9HqRywJjzc9Z9YsncbICQvw6QpelrZ8fISF44dHp7GwaaXNnKFRczgPtdFZr7EI~Iww08nDd5mVgOHTwnHKBxGvNEojvWfsqqbRGcnV-1TQowQg__',
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
