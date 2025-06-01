  import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_simple_app_bar.dart';

checkoutAppBar(BuildContext context) {
    customAppBar(
      context,
      showLeading: true,
      title: Text(
        "Checkout",
        style: Styless.textSemiBold16(context),
      ),
    );
  }
