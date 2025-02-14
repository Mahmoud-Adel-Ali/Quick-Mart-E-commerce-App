import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/functions/validation_of_input_fields.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import '../manager/cubit/profile_cubit.dart';
import 'custom_edit_profile_image.dart';

class UpdateProfileForm extends StatelessWidget {
  const UpdateProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
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
          CustomButton(
            onPressed: () {},
            text: 'Update',
          ),
        ],
      ),
    );
  }
}
