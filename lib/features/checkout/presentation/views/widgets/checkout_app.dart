import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_simple_app_bar.dart';

checkoutAppBar(BuildContext context) {
  return customAppBar(
    context,
    showLeading: true,
    onTapOnLeading: () {
      //if it is first view
      Navigator.of(context).pop();
    },
    title: Text(
      "Checkout",
      style: Styless.textSemiBold16(context),
    ),
  );
}
