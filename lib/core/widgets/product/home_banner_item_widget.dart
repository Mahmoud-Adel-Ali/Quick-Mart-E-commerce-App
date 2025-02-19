// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_badges.dart';

import '../../../features/home/data/models/banner_model/banner_model/banner_data.dart';

class HomeBannerItemWidget extends StatelessWidget {
  const HomeBannerItemWidget({
    super.key,
    required this.bannerData,
  });
  final BannerData bannerData;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 328 / 148, // 16:9 aspect ratio
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(bannerData.image ?? ''),
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
              bannerData.product ?? '',
              style: Styless.textRegular12(context)
                  .copyWith(color: context.color.grey50),
            ),
            Text(
              bannerData.category?.name ?? '',
              style: Styless.textBold24(context)
                  .copyWith(color: context.color.mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
