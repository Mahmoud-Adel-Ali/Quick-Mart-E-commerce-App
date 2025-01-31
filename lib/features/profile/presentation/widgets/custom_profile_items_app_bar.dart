import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/utils/styles.dart';

AppBar customProfileItemsAppBar(BuildContext context,
    {required String title, List<Widget>? actions}) {
  return AppBar(
    title: Text(title, style: Styless.textSemiBold18(context)),
    actions: actions,
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(
        Icons.arrow_back,
        color: context.color.textColor,
      ),
    ),
    backgroundColor: context.color.mainColor,
    flexibleSpace: Container(color: context.color.mainColor),
  );
}
