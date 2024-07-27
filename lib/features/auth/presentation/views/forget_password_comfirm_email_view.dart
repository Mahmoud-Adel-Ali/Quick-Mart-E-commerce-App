import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/custom_app_bar.dart';

class ForgetPasswordComfirmEmailView extends StatelessWidget {
  const ForgetPasswordComfirmEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: ForgetPasswordAppBar(),
        body: Column(
          children: [
            CustomAppBar(
              title: 'Forgot Password',
              trailing: Text(
                '01/03',
                style: Styless.textSemiBold14(context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
