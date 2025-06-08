import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class CustomDropdownFeild extends StatefulWidget {
  const CustomDropdownFeild({
    super.key,
    required this.hintText,
    required this.items,
    this.controller,
    this.onChanged,
    this.validator,
  });
  final String hintText;
  final List<String> items;
  final String? Function(String?)? validator;
  final void Function(String?)? onChanged;
  final SingleSelectController<String?>? controller;

  @override
  State<CustomDropdownFeild> createState() => _CustomDropdownFeildState();
}

class _CustomDropdownFeildState extends State<CustomDropdownFeild> {
  bool selectedItem = false;

  @override
  Widget build(BuildContext context) {
    return CustomDropdown<String>(
      hintText: widget.hintText,
      decoration: CustomDropdownDecoration(
        expandedFillColor: context.color.mainColor,
        closedFillColor: context.color.mainColor,
        hintStyle: Styless.textRegular12(context),
        headerStyle: Styless.textRegular14(context),
        // listItemStyle: Styless.textRegular12(context),
        expandedBorder: Border.all(color: context.color.cyan),
        closedBorder: Border.all(color: context.color.grey100),
        // closedBorder: Border.all(
        //     color: selectedItem ? context.color.blue : context.color.mainColor),
        closedSuffixIcon: Icon(
          Icons.keyboard_arrow_down,
          color: context.color.textColor,
        ),
        expandedSuffixIcon: Icon(
          Icons.keyboard_arrow_up,
          color: context.color.textColor,
        ),
      ),
      controller: widget.controller,
      items: widget.items,
      initialItem: null,
      listItemBuilder: (context, item, isSelected, onItemSelect) {
        return Container(
          padding: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: widget.items.indexOf(item) != 0
                    ? context.color.grey50
                    : Colors.transparent,
              ),
            ),
          ),
          child: Text(
            item,
            style: Styless.textRegular14(context),
          ),
        );
      },
      validator: widget.validator,
      onChanged: (value) {
        setState(() {
          selectedItem = value != null && value.isNotEmpty;
        });
        if (widget.onChanged != null) {
          widget.onChanged!(value);
        }
      },
    );
  }
}
