import 'package:flutter/material.dart';

import '../../../../constant.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(paddingOfView),
      child: Column(
        children: [
          SizedBox(height: 40),
          Container(
            height: 40,
            width: 40,
            padding: EdgeInsets.all(24),
            color: Colors.amber,
            // child: ,
          ),
        ],
      ),
    );
  }
}
