// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_lable.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final String lableText;
  final bool obscureText;
  final Function(String)? onChange;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool enabled;
  final int maxLines;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.lableText,
    this.controller,
    this.obscureText = false,
    this.onChange,
    this.suffixIcon,
    this.prefixIcon,
    this.validator,
    this.keyboardType,
    this.enabled = true,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextFormLable(lableText: lableText),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          validator: validator,
          keyboardType: keyboardType,
          enabled: enabled,
          maxLines: maxLines,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: onChange,
          style: Styless.textRegular14(context),
          cursorColor: context.color.cyan,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: Styless.textRegular12(context),
            filled: true,
            fillColor: context.color.mainColor,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 16.0,
            ),
            suffixIcon: suffixIcon,
            prefixIcon: prefixIcon,
            enabledBorder: _buildBorder(context, context.color.grey100),
            focusedBorder: _buildBorder(context, context.color.cyan),
            errorBorder: _buildBorder(context, context.color.red),
            focusedErrorBorder: _buildBorder(context, context.color.red),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder _buildBorder(BuildContext context, Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: color),
    );
  }
}
