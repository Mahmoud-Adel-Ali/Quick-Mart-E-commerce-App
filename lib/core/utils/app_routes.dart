import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/views/under_build_screen.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/views/email_verification_view.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/forget_passwod_email_verification_view.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/forget_passwod_new_password_view.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/forget_password_comfirm_email_view.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/login_view.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/password_created_successfully_view.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/views/sign_up_view.dart';
import 'package:quick_mart_app/features/home/presentation/view/home_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:quick_mart_app/features/splash/presentation/view/splash_view.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';
  static const String emailVerification = 'emailVerification';
  static const String splash = 'splash';
  static const String onbording = 'onbording';
  static const String forgetPasswordComfirmEmail = 'forgetPasswordComfirmEmai';
  static const String forgetPasswodEmailVerification =
      'forgetPasswodEmailVerification';
  static const String forgetPasswodNewPassword = 'forgetPasswodNewPassword';
  static const String passwordCreatedSuccessfully =
      'passwordCreatedSuccessfully';
  static const String homeView = 'homeView';
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
      case forgetPasswordComfirmEmail:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswordComfirmEmailView());
      case forgetPasswodEmailVerification:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswodEmailVerificationView());
      case forgetPasswodNewPassword:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswodNewPasswordView());
      case passwordCreatedSuccessfully:
        return MaterialPageRoute(
            builder: (context) => const PasswordCreatedSuccessfullyView());
      case homeView:
        return MaterialPageRoute(
            builder: (context) => const HomeView());
      default:
        return MaterialPageRoute(
          builder: (context) => const PageUnderBuildView(),
        );
    }
  }
}
