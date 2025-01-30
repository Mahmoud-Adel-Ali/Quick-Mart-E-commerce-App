import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

class ProfileViewBodySection extends StatelessWidget {
  const ProfileViewBodySection(
      {super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Text(
            title,
            style: Styless.textSemiBold16(context),
          ),
        ),
        Column(children: children)
      ],
    );
  }
}
