import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/app/app_routes.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/form_header.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/login_form.dart';
import 'package:quick_mart_app/features/auth/login/presentation/widgets/privacy_terms.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/widgets/with_google_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: FormHeader(
              viewTitle: 'Login',
              secondViewName: "Sign up",
              leadingText: "Dont't have an account? ",
              onPressed: () {
                context.pushReplacementNamed(AppRoutes.signUp);
              },
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
          const SliverToBoxAdapter(child: LoginForm()),
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
          const SliverToBoxAdapter(
            child: WithGoogleWidget(
              text: 'Login with Google',
            ),
          ),
          const SliverFillRemaining(
              hasScrollBody: false, child: PrivacyTerms()),
        ],
      ),
    );
  }
}
