import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

customSimpleAppBar(
  BuildContext context, {
  required void Function() onTapOnLeading,
  List<Widget>? actions,
}) {
  return AppBar(
    title: Text('Forgot Password', style: Styless.textSemiBold14(context)),
    leading: IconButton(
      onPressed: onTapOnLeading,
      icon: Icon(Icons.arrow_back, color: context.color.textColor),
    ),
    backgroundColor: context.color.mainColor,
    flexibleSpace: FlexibleSpaceBar(
      background: Container(color: context.color.mainColor),
    ),
    actions: actions,
    elevation: 0,
  );
}
