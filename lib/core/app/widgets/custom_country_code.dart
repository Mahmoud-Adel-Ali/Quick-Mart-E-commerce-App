import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:quick_mart_app/core/app/widgets/custom_text_form_lable.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomCountryCode extends StatefulWidget {
  const CustomCountryCode({super.key});

  @override
  State<CustomCountryCode> createState() => _CustomCountryCodeState();
}

class _CustomCountryCodeState extends State<CustomCountryCode> {
  String number = "";
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CustomTextFormLable(lableText: 'Phone Number'),
        //Picker Widget
        IntlPhoneField(
          focusNode: focusNode,
          cursorColor: context.color.cyan,
          dropdownIconPosition: IconPosition.trailing,
          dropdownIcon: const Icon(Icons.keyboard_arrow_down),
          invalidNumberMessage: 'Incorrect number',
          decoration: InputDecoration(
            // labelText: 'Phone Number',
            fillColor: context.color.mainColor,
            filled: true,

            border: _buildBorder(context, color: context.color.grey100),
            focusedBorder: _buildBorder(context, color: context.color.cyan),
            enabledBorder: _buildBorder(
              context,
              color: number.isNotEmpty
                  ? context.color.blue
                  : context.color.grey100,
            ),
          ),
          languageCode: "en",
          onChanged: (phone) {
            number = phone.number;
            setState(() {});
          },
          onCountryChanged: (country) {},
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
