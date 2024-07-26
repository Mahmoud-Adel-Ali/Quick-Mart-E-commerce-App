import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/app/widgets/custom_quick_mart_header.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/core/utils/images/app_images.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/login_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return  SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            CustomQuickMartHeader(height: height),
            const SizedBox(height: 30),
            Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: Text(
                  "Login",
                  style: Styless.textBold24(context),
                )),
            const SizedBox(height: 5),
            Row(
              children: [
                Text(
                  'Don’t have an account? ',
                  style: Styless.textRegular14(context),
                ),
                TextButton(
                  onPressed: () {
                    context.pushReplacementNamed(AppRoutes.signUp);
                  },
                  child: Text(
                    'Signup ',
                    style: Styless.textRegular14(context)
                        .copyWith(color: context.color.cyan),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            const LoginForm(),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login with Google',
                  style: Styless.textSemiBold16(context),
                ),
                const SizedBox(width: 20),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(Assets.imagesGoogle),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
