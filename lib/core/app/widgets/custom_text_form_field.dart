// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_text_form_lable.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.onChange,
    this.suffixIcon,
    this.validator,
    this.controller,
    required this.lableText,
  });
  final TextEditingController? controller;
  final String hintText;
  final String lableText;
  final bool? obscureText;
  final Function(String)? onChange;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextFormLable(lableText: lableText),
        const SizedBox(height: 10),
        TextFormField(
          controller: controller,
          obscureText: obscureText ?? false, // show_Text or no
          validator: validator,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: onChange,
          style: Styless.textRegular14(context),
          cursorColor: context.color.cyan,
          decoration: InputDecoration(
            fillColor: context.color.mainColor,
            filled: true,
            hintStyle: Styless.textRegular12(context),
            hintText: hintText,
            suffixIcon: suffixIcon,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide(
                  color: context.color.cyan,
                )),
            errorBorder: errorBorder(context),
            focusedErrorBorder: errorBorder(context),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: context.color.grey100),
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder errorBorder(BuildContext context) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: context.color.red));
  }
}