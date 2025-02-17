import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/functions/validation_of_input_fields.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../../../../core/widgets/custom_toast_message.dart';
import '../manager/cubit/profile_cubit.dart';
import 'custom_edit_profile_image.dart';

class UpdateProfileForm extends StatelessWidget {
  const UpdateProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is UpdateProfileSuccess) {
          context.read<ProfileCubit>().getUserProfile();
          context.pop();
        } else if (state is UpdateProfileFailure) {
          CustomToastMessage().bottomToast(
            context,
            msg: state.errorMessage,
            type: ToastMessageType.error,
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: context.read<ProfileCubit>().updateProfileFormKey,
          child: Column(
            children: [
              CustomEditProfileImage(),
              const SizedBox(height: 30),
              CustomTextFormField(
                hintText: 'Enter Your updated Name',
                lableText: 'Full Name',
                controller: context.read<ProfileCubit>().updateProfileName,
                validator: (value) {
                  return validUserName(value);
                },
              ),
              const SizedBox(height: 50),
              state is UpdateProfileLoading
                  ? CircularProgressIndicator(color: context.color.cyan)
                  : CustomButton(
                      onPressed: () {
                        if (context
                            .read<ProfileCubit>()
                            .updateProfileFormKey
                            .currentState!
                            .validate()) {
                          context.read<ProfileCubit>().updateProfile();
                        }
                      },
                      text: 'Update',
                    ),
            ],
          ),
        );
      },
    );
  }
}
