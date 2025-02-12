import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';
import 'package:quick_mart_app/core/utils/styles.dart';

import '../../../../core/utils/app_routes.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Mahmoud Adel',
        style: Styless.textSemiBold16(context)
            .copyWith(color: context.color.white),
      ),
      subtitle: Text(
        'mahmoudadel@gmail.com',
        style: Styless.textSemiBold14(context)
            .copyWith(color: context.color.white),
      ),
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Image.asset(Assets.imagesCategory),
      ),
      trailing: GestureDetector(
        onTap: () {
          // show simple dialog context logout | cancel
          logoutDialog(context);
        },
        child: SvgPicture.asset(Assets.imagesLogoutIcon),
      ),
    );
  }

  Future<dynamic> logoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        backgroundColor: context.color.mainColor,
        title: SizedBox(
          width: double.infinity,
          child: Text(
            'Are you sure you want to logout?',
            style: Styless.textSemiBold18(context),
            textAlign: TextAlign.center,
          ),
        ),
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(context.color.grey50),
                    ),
                    onPressed: () {
                      context.read<AppCubit>().logout();
                      context.pushNamedAndRemoveUntil(AppRoutes.login);
                    },
                    child: Text(
                      'Logout',
                      style: Styless.textSemiBold16(context),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.pop();
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStatePropertyAll(context.color.textColor),
                    ),
                    child: Text(
                      'Cancel',
                      style: Styless.textSemiBold16(context).copyWith(
                        color: context.color.mainColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
