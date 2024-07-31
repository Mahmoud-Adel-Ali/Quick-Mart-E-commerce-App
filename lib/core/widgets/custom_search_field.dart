import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/search_field_icon.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class CustomSearchField extends StatefulWidget {
  const CustomSearchField({super.key, this.controller, this.onChanged});
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  @override
  State<CustomSearchField> createState() => _CustomSearchFieldState();
}

class _CustomSearchFieldState extends State<CustomSearchField> {
  bool isAvailable = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.color.mainColor,
      elevation: 5,
      shadowColor: context.color.grey50,
      child: TextFormField(
        style: Styless.textMedium16(context),
        controller: widget.controller,
        onTap: () {
          isAvailable = true;
          setState(() {});
        },
        onFieldSubmitted: (s) {
          isAvailable = false;
          setState(() {});
        },
        onChanged:widget.onChanged,
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: Styless.textRegular12(context),
            suffixIcon: SearchFieldIcon(
                icon: isAvailable
                    ? context.image.suffSerchField
                    : Assets.imagesSuffSearchGrey),
            prefixIcon: SearchFieldIcon(
                icon: isAvailable
                    ? context.image.searchIcon
                    : Assets.imagesSearchGrey),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide(color: context.color.cyan),
            ),
            border: InputBorder.none),
      ),
    );
  }
}
