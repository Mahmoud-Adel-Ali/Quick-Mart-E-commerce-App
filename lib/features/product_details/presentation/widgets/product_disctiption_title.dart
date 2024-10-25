import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/models/product_model/product_model.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class ProductDiscriptionTitle extends StatefulWidget {
  const ProductDiscriptionTitle({super.key, required this.product});
  final ProductModel product;

  @override
  State<ProductDiscriptionTitle> createState() =>
      _ProductDiscriptionTitleState();
}

class _ProductDiscriptionTitleState extends State<ProductDiscriptionTitle> {
  int maxLine = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            widget.product.description ?? "no discription",
            style: Styless.textSemiBold16(context),
            maxLines: maxLine,
            textAlign: TextAlign.start,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        maxLine != 5
            ? SizedBox()
            : TextButton(
                onPressed: () {
                  setState(() {
                    maxLine = maxLine == 5 ? 100 : 5;
                  });
                },
                child: SizedBox(
                    width: double.infinity,
                    child: Text(
                      'Read more',
                      textAlign: TextAlign.end,
                    )),
              ),
      ],
    );
  }
}
