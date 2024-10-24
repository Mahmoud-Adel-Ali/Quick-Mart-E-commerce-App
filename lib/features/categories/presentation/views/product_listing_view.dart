import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/models/product_model/category.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/categories/presentation/widgets/product_listing_view_body.dart';

class ProductListingView extends StatelessWidget {
  const ProductListingView({super.key});
  // final String categoryName;
  @override
  Widget build(BuildContext context) {
    // setting object
    final category = ModalRoute.of(context)!.settings.arguments as CategoryModel;
    return Scaffold(
      appBar: customAppBar(
        context,
        title: Text(category.name ?? "unLabled Categoty", style: Styless.textBold18(context)),
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
      body: ProductListingViewBody(
        category: category,
      ),
    );
  }
}
