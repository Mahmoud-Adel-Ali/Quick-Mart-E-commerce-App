import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/utils/styles.dart';

class CustomCartItemNameAndCheckout extends StatelessWidget {
  const CustomCartItemNameAndCheckout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Loop Silicone Strong Magnetic Watch',
        style: Styless.textSemiBold16(context),
        // max line is 2
        softWrap: true,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
      trailing: Checkbox(
        value: true,
        onChanged: (e) {},
        fillColor: WidgetStatePropertyAll(context.color.cyan),
      ),
    );
  }
}
