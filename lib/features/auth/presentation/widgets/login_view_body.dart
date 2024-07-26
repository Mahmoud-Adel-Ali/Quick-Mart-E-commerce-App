import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_quick_mart_header.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/form_header.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/login_form.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/with_google_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            CustomQuickMartHeader(height: height),
            const SizedBox(height: 30),
            FormHeader(
              viewTitle: 'Login',
              secondViewName: "Sign up",
              leadingText: 'Already have an account? ',
              onPressed: () {
                context.pushReplacementNamed(AppRoutes.signUp);
              },
            ),
            const SizedBox(height: 30),
            const LoginForm(),
            const SizedBox(height: 50),
            const WithGoogleWidget(
              text: 'Login with Google',
            ),
          ],
        ),
      ),
    );
  }
}
