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
              'https://s3-alpha-sig.figma.com/img/cc61/3cbf/1b8131ced9da4b0d651e5a8d437e5eb2?Expires=1739145600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=N~gqdTj4BrAw8azluAjNQJ-Yx9nHr8rS0fgyF0jIMS5IuQ6Q87ANRRvJjnGsJSRaeB7UDdqYo8GCddu1rtObKLwZmbSuWiuDZybnZCp73BhaxvIuAhaj0K~JkQBpS8dwzLf-YUpde33jQ678qFKjbB18ElvYse~Jz6B~0Dhi9nsSxUBNY0tYxipyQaitRLUQXunfHMNNAA2DVrbDieQdpixCbDRifLUnVi4SOUE7rpYYia3M7wBX3HzgUaJGf0~xl4LrPHqm5rWfaG2dZIF3OGipM60NFAYn-AqZEAgr8Ave-OSxabM13vgktsTYIreGaTDUfEZxCU4HKk4D3zvTxA__',
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
