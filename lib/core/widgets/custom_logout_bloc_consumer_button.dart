
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_routes.dart';
import 'package:quick_mart_app/core/widgets/custom_button.dart';

class CustomLogoutBlocConsumerButton extends StatelessWidget {
  const CustomLogoutBlocConsumerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
        if (state is LogoutDone) {
          context.pushNamedAndRemoveUntil(AppRoutes.login);
        }
      },
      builder: (context, state) {
        return state is LogoutLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : CustomButton(
                onPressed: () {
                  context.read<AppCubit>().logout();
                },
                text: 'Logout');
      },
    );
  }
}
