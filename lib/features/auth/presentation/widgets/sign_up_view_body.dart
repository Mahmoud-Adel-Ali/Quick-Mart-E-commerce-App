import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/routes/app_routes.dart';
import 'package:quick_mart_app/core/utils/styles/styles.dart';
import 'package:quick_mart_app/features/auth/presentation/widgets/sign_up_form.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                width: double.infinity,
                child: SvgPicture.asset(
                  context.image.quickmartImage,
                  fit: BoxFit.scaleDown,
                  height: height * 0.05,
                ),
              ),
              const SizedBox(height: 30),
              Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  child: Text(
                    "Signup",
                    style: Styless.textBold24(context),
                  )),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    'Already have an account? ',
                    style: Styless.textRegular14(context),
                  ),
                  TextButton(
                    onPressed: () {
                      context.pushReplacementNamed(AppRoutes.login);
                    },
                    child: Text(
                      'Login ',
                      style: Styless.textRegular14(context)
                          .copyWith(color: context.color.cyan),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              const SignUpForm(),
            ],
          ),
        ),
      ),
    );
  }
}
