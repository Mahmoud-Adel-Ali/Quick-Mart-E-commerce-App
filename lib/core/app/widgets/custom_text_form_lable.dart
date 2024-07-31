import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class CustomTextFormLable extends StatelessWidget {
  const CustomTextFormLable({
    super.key,
    required this.lableText,
  });

  final String lableText;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          Text(
            lableText,
            style: Styless.textMedium14(context),
          ),
          Icon(
            Icons.star,
            color: context.color.red,
            size: 12,
          )
        ],
      ),
    );
  }
}
