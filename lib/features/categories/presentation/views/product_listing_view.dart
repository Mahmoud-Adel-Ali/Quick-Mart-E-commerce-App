import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';

class ProductListingView extends StatelessWidget {
  const ProductListingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: Text("Product Listing name", style: Styless.textBold18(context)),
        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(context.image.suffSerchField),
          ),
          SizedBox(width: 20),
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(context.image.searchIcon),
          ),
          SizedBox(width: 12),
        ],
      ),
    );
  }
}
