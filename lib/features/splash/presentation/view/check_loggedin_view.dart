import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/services/services_locator.dart';
import 'package:quick_mart_app/core/views/quick_mart_app_views.dart';
import 'package:quick_mart_app/features/auth/login/presentation/views/login_view.dart';

import '../widgets/splash_view_body.dart';

class CheckLoggedinView extends StatelessWidget {
  const CheckLoggedinView({super.key});
  Future<bool> checkLoginStatus() async {
    bool status =
        getit.get<CacheHelper>().getBoolean(CachKeys.isLoggedIn) ?? false;
    return status;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: checkLoginStatus(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(body: SplashViewBody());
        } else if (snapshot.hasData && snapshot.data == true) {
          return const QuickMartAppViews(); // Navigate to Home if logged in
        } else {
          return const LoginView(); // Navigate to Login if not logged in
        }
      },
    );
  }
}
