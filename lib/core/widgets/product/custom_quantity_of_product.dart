// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomQuantityOfProduct extends StatelessWidget {
  const CustomQuantityOfProduct({
    super.key,
    this.initVal = 0,
    this.maxVal = 100,
    this.minVal = 0,
    this.steps = 1, // Adjust this according to your requirement.
    this.onQtyChanged,
  });
  final int initVal;
  final int maxVal;
  final int minVal;
  final int steps; // Adjust this according to your requirement.
  final Function(dynamic)? onQtyChanged;
  @override
  Widget build(BuildContext context) {
    return InputQty(
      maxVal: maxVal,
      initVal: initVal,
      minVal: minVal,
      steps: steps,
      onQtyChanged: (val) {},
      qtyFormProps: QtyFormProps(enableTyping: false),
      decoration: QtyDecorationProps(
        btnColor: context.color.cyan,
      ),
    );
  }
}
