import 'package:flutter/material.dart';
import 'package:intl_phone_field/countries.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/widgets/custom_text_form_lable.dart';

import '../utils/styles.dart';

class CustomPhoneTextFormField extends StatefulWidget {
  final TextEditingController? controller;
  final ValueChanged<PhoneNumber>? onChanged;
  final ValueChanged<Country>? onCountryChanged;

  const CustomPhoneTextFormField({
    super.key,
    this.controller,
    this.onChanged,
    this.onCountryChanged,
  });

  @override
  State<CustomPhoneTextFormField> createState() =>
      _CustomPhoneTextFormFieldState();
}

class _CustomPhoneTextFormFieldState extends State<CustomPhoneTextFormField> {
  String number = "";
  final FocusNode _focusNode = FocusNode();
  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose(); // Don't dispose widget.controller (external)
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomTextFormLable(lableText: 'Phone Number'),
        SizedBox(height: 10),
        //Picker Widget
        IntlPhoneField(
          focusNode: _focusNode,
          cursorColor: context.color.cyan,
          dropdownIconPosition: IconPosition.trailing,
          dropdownIcon: const Icon(Icons.keyboard_arrow_down),
          invalidNumberMessage: 'Incorrect number',
          style: Styless.textRegular14(context),
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: 'Enter Your Phone Number',
            hintStyle: Styless.textRegular12(context),
            prefixStyle: Styless.textRegular14(context),
            floatingLabelStyle: Styless.textRegular14(context),
            fillColor: context.color.mainColor,
            filled: true,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 16.0,
            ),
            border: _buildBorder(context, color: context.color.grey100),
            focusedBorder: _buildBorder(context, color: context.color.cyan),
            enabledBorder: _buildBorder(
              context,
              color: context.color.grey100,
            ),
          ),
          languageCode: "en",
          onChanged: (phone) {
            number = phone.number;
            setState(() {});
            widget.onChanged?.call(phone);
          },
          onCountryChanged: (country) {
            widget.onCountryChanged?.call(country);
          },
        ),
      ],
    );
  }

  OutlineInputBorder _buildBorder(BuildContext context,
      {required Color color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
