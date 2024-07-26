import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/app/views/under_build_screen.dart';
import 'package:quick_mart_app/features/auth/presentation/views/email_verification_view.dart';
import 'package:quick_mart_app/features/auth/presentation/views/login_view.dart';
import 'package:quick_mart_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:quick_mart_app/features/splash/presentation/view/splash_view.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';
  static const String emailVerification = 'emailVerification';
  static const String splash = 'splash';
  static const String onbording = 'onbording';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onbording:
        return MaterialPageRoute(builder: (context) => const OnBoardingView());
      case splash:
        return MaterialPageRoute(builder: (context) => const SplashView());
      case signUp:
        return MaterialPageRoute(builder: (context) => const SignUpView());
      case emailVerification:
        return MaterialPageRoute(
            builder: (context) => const EmailVerificationView());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginView());
      default:
        return MaterialPageRoute(
          builder: (context) => const PageUnderBuildView(),
        );
    }
  }
}
