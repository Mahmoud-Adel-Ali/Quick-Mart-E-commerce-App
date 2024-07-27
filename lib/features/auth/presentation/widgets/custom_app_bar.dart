import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.trailing,
  });
  final String title;
  final Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: Styless.textSemiBold14(context)),
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: Icon(Icons.arrow_back, color: context.color.textColor),
      ),
      trailing: trailing,
    );
  }
}