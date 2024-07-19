import 'package:flutter/material.dart';

class PageUnderBuildView extends StatelessWidget {
  const PageUnderBuildView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration:const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/page_under_build.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
