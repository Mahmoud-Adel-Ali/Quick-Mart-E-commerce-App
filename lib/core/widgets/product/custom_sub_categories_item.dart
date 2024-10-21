

import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_cached_network_image.dart';

class CustomSubCategoriesItem extends StatelessWidget {
  const CustomSubCategoriesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 160 / 138,
          child: Container(
            padding: EdgeInsets.only(right: 16, top: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              image: customCachedNetworkImageprovider('https://s3-alpha-sig.figma.com/img/e247/c4b6/2d9352afd2a1a76e569e14ab01475e34?Expires=1730073600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=bd9bwpmnwwbSgd0vUgtaJleJUm7RDiypSaM9eUJQWDJCIOnBTh2oB~uPHkgomWPkdJWDTO6FDehTZC73gI73-54-pjflldmWM6DAxT8ajAKGp2mCMc8e3KcQaP9gaC8kpLyKhxTWLHukIVAOaje-iJONoTTayzNSZ6EeeTSG9JG1LtmVWNJyhrH-NT-Et3oZQnGR28CXVWthIJigfeYbFWiZ1oQ8iWKGxQbsxwaLK92d~BpfaB5Fcc~F4wbuOoAUbyOKXgg1iOdlUR4a-bgaTnwXoEcTSp5qLdxytoTuppPRJx-kMIfetTAnbd2yXd4pF4S~0sBBUt0XIRd1if-4NA__'),
            ),
            alignment: Alignment.topRight,
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 8),
          child: Text("Smart Watches", style: Styless.textBold18(context),))
      ],
    );
  }
}
