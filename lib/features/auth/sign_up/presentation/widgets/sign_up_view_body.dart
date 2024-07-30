import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/form_header.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/sign_up_form.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/with_google_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FormHeader(
                viewTitle: 'Sign Up',
                secondViewName: "Login",
                leadingText: 'Already have an account? ',
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.login);
                },
              ),
              const SizedBox(height: 30),
              const SignUpForm(),
              const SizedBox(height: 50),
              const WithGoogleWidget(text: 'Signup with Google'),
            ],
          ),
        ),
      ),
    );
  }
}
