import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

customAppBar(
  BuildContext context, {
  void Function()? onTapOnLeading,
  List<Widget>? actions,
  Widget? title,
  bool? showLeading = false,
}) {
  return AppBar(
    title: title,
    leading:showLeading == false ? null : IconButton(
      onPressed: onTapOnLeading ?? () => context.pop(),
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
