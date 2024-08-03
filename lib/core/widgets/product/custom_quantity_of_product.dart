import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/custom_toast_message.dart';

class CustomQuantityOfProduct extends StatefulWidget {
  const CustomQuantityOfProduct({super.key});
  @override
  State<CustomQuantityOfProduct> createState() =>
      _CustomQuantityOfProductState();
}

class _CustomQuantityOfProductState extends State<CustomQuantityOfProduct> {
  int numOfProduct = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              if (numOfProduct > 0) {
                numOfProduct--;
                setState(() {});
              } else {
                CustomToastMessage().bottomToast(context,
                    msg: '"Is zero"', type: ToastMessageType.info);
              }
            },
            icon: Icon(
              Icons.horizontal_rule,
              color: numOfProduct == 0
                  ? context.color.grey100
                  : context.color.textColor,
            )),
        const SizedBox(width: 10),
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          child: FittedBox(
            child: Text(
              numOfProduct.toString(),
              style: Styless.textSemiBold18(context),
            ),
          ),
        ),
        const SizedBox(width: 10),
        IconButton(
            onPressed: () {
              if (numOfProduct < 10) {
                numOfProduct++;
                setState(() {});
              } else {
                CustomToastMessage().bottomToast(context,
                    msg: '"10 is max"', type: ToastMessageType.info);
              }
            },
            icon: Icon(
              Icons.add,
              color: numOfProduct == 10
                  ? context.color.grey100
                  : context.color.textColor,
            )),
      ],
    );
  }
}
