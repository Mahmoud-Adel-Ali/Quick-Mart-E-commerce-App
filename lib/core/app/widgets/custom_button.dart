import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.textColor,
    this.color,
    this.child,
  });
  final Function()? onPressed;
  final String text;
  final Color? textColor;
  final Color? color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: color ?? context.color.buttonColor,
      minWidth: MediaQuery.sizeOf(context).width,
      height: 67,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child:child ?? Text(
        text,
        style: Styless.textSemiBold14(context).copyWith(
          color: textColor ?? Colors.white,
        ),
      ),
    );
  }
}
