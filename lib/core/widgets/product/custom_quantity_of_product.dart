import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

class CustomQuantityOfProduct extends StatelessWidget {
  const CustomQuantityOfProduct({
    super.key,
    this.initVal = 0,
    this.maxVal = 5,
    this.minVal = 0,
    this.steps = 1,
    this.onQtyChanged,
  });

  final int initVal;
  final int maxVal;
  final int minVal;
  final int steps;
  final ValueChanged<dynamic>? onQtyChanged;

  @override
  Widget build(BuildContext context) {
    return InputQty(
      maxVal: maxVal,
      initVal: initVal,
      minVal: minVal,
      steps: steps,
      onQtyChanged: onQtyChanged,
      qtyFormProps: _buildQtyFormProps(),
      decoration: _buildDecorationProps(context),
    );
  }

  QtyFormProps _buildQtyFormProps() => const QtyFormProps(
        enableTyping: false,
      );

  QtyDecorationProps _buildDecorationProps(BuildContext context) =>
      QtyDecorationProps(
        btnColor: context.color.cyan,
        border: InputBorder.none,
        fillColor: Colors.transparent,
        qtyStyle: QtyStyle.classic,
      );
}
