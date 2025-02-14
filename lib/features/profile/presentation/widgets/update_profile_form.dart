import 'package:flutter/material.dart';

import '../../../../core/functions/validation_of_input_fields.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_form_field.dart';
import 'custom_edit_profile_image.dart';

class UpdateProfileForm extends StatelessWidget {
  const UpdateProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      // key: context.read<SignUpCubit>().signUpFormKey,
      child: Column(
        children: [
          CustomEditProfileImage(),
          const SizedBox(height: 30),
          CustomTextFormField(
            hintText: 'Enter Your updated Name',
            lableText: 'Full Name',
            // controller: context.read<SignUpCubit>().signUpUserName,
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
