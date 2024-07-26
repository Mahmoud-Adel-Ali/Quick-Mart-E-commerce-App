import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/widgets/custom_quick_mart_header.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/form_header.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/login_form.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/privacy_terms.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/with_google_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CustomQuickMartHeader(height: height)),
          const SliverToBoxAdapter(child: SizedBox(height: 30)),
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
