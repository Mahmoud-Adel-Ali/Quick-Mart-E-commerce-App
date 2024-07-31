import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomToggel extends StatelessWidget {
  const CustomToggel({
    super.key, required this.value, this.onChanged,
  });
  final bool value;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChanged,
      hoverColor: context.color.blue,
      activeColor: context.color.black,
      inactiveTrackColor: context.color.grey100,
      activeTrackColor: context.color.cyan,
      inactiveThumbColor: context.color.black,
    );
  }
}
