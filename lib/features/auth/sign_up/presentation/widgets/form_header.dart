import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class FormHeader extends StatelessWidget {
  const FormHeader({
    super.key,
    required this.leadingText,
    this.secondViewName,
    this.onPressed,
    required this.viewTitle,
  });
  final String leadingText;
  final String? secondViewName;
  final void Function()? onPressed;
  final String viewTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          child: Text(
            viewTitle,
            style: Styless.textBold24(context),
          ),
        ),
        const SizedBox(height: 5),
        secondViewName == null
            ? Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                  leadingText,
                  style: Styless.textRegular14(context),
                ),
            )
            : Row(
                children: [
                  Text(
                    leadingText,
                    style: Styless.textRegular14(context),
                  ),
                  TextButton(
                    onPressed: onPressed,
                    child: Text(
                      secondViewName!,
                      style: Styless.textRegular14(context)
                          .copyWith(color: context.color.cyan),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
