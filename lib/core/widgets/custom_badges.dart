import 'package:flutter/cupertino.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge(
      {super.key, required this.text, required this.color, this.textColor});
  final String text;
  final Color color;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(text,
          style: Styless.textSemiBold10(context)
              .copyWith(color: textColor ?? context.color.white)),
    );
  }
}

class TopRated extends StatelessWidget {
  const TopRated({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBadge(text: "Top Rated", color: context.color.blue);
  }
}

class LimitedStock extends StatelessWidget {
  const LimitedStock({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBadge(text: "Limited Stock", color: context.color.purple);
  }
}

class ExclusiveSale extends StatelessWidget {
  const ExclusiveSale({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBadge(text: "Exclusive Sale", color: context.color.red);
  }
}

class FreeShipping extends StatelessWidget {
  const FreeShipping({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBadge(
        text: "Free Shipping", color: context.color.cyan50General);
  }
}

class PreOrder extends StatelessWidget {
  const PreOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBadge(text: "Pre-Order", color: context.color.orange);
  }
}

class SaleOff extends StatelessWidget {
  const SaleOff({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBadge(
      text: "Sale OFF",
      color: context.color.textColor,
      textColor: context.color.mainColor,
    );
  }
}
