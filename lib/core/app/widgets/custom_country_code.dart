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
  var number = "";
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextFormLable(lableText: 'Phone Number'),
        //Picker Widget
        IntlPhoneField(
          focusNode: focusNode,
          cursorColor: context.color.cyan,
          decoration: InputDecoration(
            // labelText: 'Phone Number',
            fillColor: context.color.mainColor,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(),
            ),
          ),
          languageCode: "en",
          onChanged: (phone) {
            print(phone.completeNumber);
          },
          onCountryChanged: (country) {
            print('Country changed to: ' + country.name);
          },
        ),
      ],
    );
  }
}
