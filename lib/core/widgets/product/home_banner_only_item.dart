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
              'https://s3-alpha-sig.figma.com/img/cc61/3cbf/1b8131ced9da4b0d651e5a8d437e5eb2?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=LluwurBcv2vnJ-9STQcZRwY6YaC2qjVryX4ih2XUSuNgySi-vVEy1-1Fh7c6wN5oJcDtXj-ooSpefKfpIUd3OVI5xvX8Du7n4OfutW-Zld4YHFhLWv3juPue28yWTHOwkrVSUUSWHhiaRicPZ-qXhB48tpF4StdI6UMB6fmwmENFJS~jFewp-9ocvcRfq2I~w0oienOq0sld1Om8jwInfmzD5C6O5q4AumW6D42OHQm5VFUgw9b1yKCMFusSz3Neurt7ngmRE3NsE-QYiLm-yq61BYKrt12Z2h7mfbG9L-C9m1ErOMyT0uBrQ5HFPy8fMK4asKPqvn-o7zYy2PK~HQ__',
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
