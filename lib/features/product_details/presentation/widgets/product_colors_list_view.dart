import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles.dart';
import 'package:quick_mart_app/core/widgets/product/one_color_of_product.dart';

class ProductColorsListView extends StatefulWidget {
  const ProductColorsListView({super.key, required this.colors});
  final List<Color> colors;

  @override
  State<ProductColorsListView> createState() => _ProductColorsListViewState();
}

class _ProductColorsListViewState extends State<ProductColorsListView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text("Colors", style: Styless.textSemiBold18(context)),
        ),
        Container(
          height: 52,
          alignment: Alignment.centerLeft,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.colors.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 4.0),
                child: OneColorsOfProduct(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  color: widget.colors[index],
                  isSelected: index == currentIndex,
                  radius: 45,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
