import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/views/quick_mart_app_views.dart';
import 'package:quick_mart_app/core/views/under_build_screen.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/forget_password_view.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/views/email_verification_view.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/login_view.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/password_created_successfully_view.dart';
import 'package:quick_mart_app/features/auth/sign_up/presentation/views/sign_up_view.dart';
import 'package:quick_mart_app/features/categories/presentation/views/product_listing_view.dart';
import 'package:quick_mart_app/features/categories/presentation/views/sub_categories_view.dart';
import 'package:quick_mart_app/features/product_details/presentation/views/product_details_view.dart';
import 'package:quick_mart_app/features/home/presentation/view/home_view.dart';
import 'package:quick_mart_app/features/onBoarding/presentation/views/on_boarding_view.dart';
import 'package:quick_mart_app/features/splash/presentation/view/splash_view.dart';

import '../../features/profile/presentation/view/privacy_policy_view.dart';
import '../../features/profile/presentation/view/terms_and_conditions_view.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';
  static const String emailVerification = 'emailVerification';
  static const String splash = 'splash';
  static const String onbording = 'onbording';
  static const String passwordCreatedSuccessfully =
      'passwordCreatedSuccessfully';
  static const String homeView = 'homeView';
  static const String quickMartAppViews = 'quickMartAppViews';
  static const String forgetPasswordView = 'forgetPasswordView';
  static const String subCategoriesView = 'subCategoriesView';
  static const String productListingView = 'productListingView';
  static const String productDetailsView = 'productDetailsView';
  static const String privacyPolicyView = 'privacyPolicyView';
  static const String termsAndConditionsView = 'termsAndConditionsView';

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
      case forgetPasswordView:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswordView());
      case passwordCreatedSuccessfully:
        return MaterialPageRoute(
            builder: (context) => const PasswordCreatedSuccessfullyView());
      case homeView:
        return MaterialPageRoute(builder: (context) => const HomeView());
      case quickMartAppViews:
        return MaterialPageRoute(
            builder: (context) => const QuickMartAppViews());
      case subCategoriesView:
        return MaterialPageRoute(
            builder: (context) => const SubCategoriesView());
      case productListingView:
        return MaterialPageRoute(
            settings: settings,
            builder: (context) => const ProductListingView());
      case productDetailsView:
        return MaterialPageRoute(
            settings: settings,
            builder: (context) => const ProductDetailsView());
      case privacyPolicyView:
        return MaterialPageRoute(
            builder: (context) => const PrivacyPolicyView());
      case termsAndConditionsView:
        return MaterialPageRoute(
            builder: (context) => const TermsAndConditionsView());
      default:
        return MaterialPageRoute(
          builder: (context) => const PageUnderBuildView(),
        );
    }
  }
}
