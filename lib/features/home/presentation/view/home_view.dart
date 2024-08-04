import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(context),
    );
  }
}