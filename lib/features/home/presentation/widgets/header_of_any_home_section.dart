import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class HeaderOfAnyHomeSection extends StatelessWidget {
  const HeaderOfAnyHomeSection({
    super.key,
    required this.title,
    this.onPressedOnSeeAll,
  });
  final String title;
  final void Function()? onPressedOnSeeAll;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Styless.textBold18(context),
        ),
        TextButton(
          onPressed: onPressedOnSeeAll,
          child: Text(
            'SEE ALL',
            style: Styless.textSemiBold12(context)
                .copyWith(color: context.color.cyan),
          ),
        )
      ],
    );
  }
}
