import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_card_image.dart';
import 'package:quick_mart_app/core/widgets/product/custom_product_colors.dart';

class CustomProductCard extends StatelessWidget {
  const CustomProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    const String imgPath =
        'https://s3-alpha-sig.figma.com/img/1b9b/7b5f/af2955a24f3eb00b24e6e50afd567e36?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ojtNIP4wDXU78FmAEOfFJM8yI1LJr6flriTxx-LdpermBe0bRDfkdmgiPZlpDgC8fhmoHbXBSn~fPxEalcSyjYKzh96VXgq2cWOa9dSAfA9w-TZByQvJLoT25t3BCmjuvLTDmlME92K2JFBSAjiu5nXHXBDDKdunmqbLxZT8nLQ6QxQAUtN6cw3Vp~xSqLhgRAfhdhvImG4-nlK4JUdQ-zlHlQ9jGNa9nSQB7LbhGzdjrB6hwSb9s0ad3wuGpRTWTgkN0uoR29tI7S5kjCmSacgLzC7KkV9b2UQfaOgyq4v0vkm-uFqejD88-2SU8QB6gvcfWVXIr9AAqgFQfUPdzw__';
    return Card(
      color: context.color.mainColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomProductCardImage(imgPath: imgPath),
          Row(
            children: [
              CustomProductColors(
                productColors: [
                  context.color.textColor,
                  context.color.cyan50General,
                  context.color.cyan,
                ],
                currentColor: 1,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'All 5 Colors',
                  style: Styless.textMedium14(context).copyWith(
                      color: context.color.grey150,
                      decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          Text(
            'Product Name',
            style: Styless.textBold18(context),
          ),
          Text(
            r'$126.00',
            style: Styless.textSemiBold16(context),
          ),
          Text(
            r'$186.00',
            style: Styless.textRegular12(context),
          ),
        ],
      ),
    );
  }
}
