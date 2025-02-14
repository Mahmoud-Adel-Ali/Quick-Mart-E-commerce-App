import 'package:flutter/material.dart';

import '../../../auth/sign_up/presentation/widgets/form_header.dart';
import 'update_profile_form.dart';

class UpdateProfileViewBody extends StatelessWidget {
  const UpdateProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            FormHeader(
              viewTitle: 'Update Profile',
              secondViewName: "",
              leadingText: 'Now , You can update your profile.',
            ),
            SizedBox(height: 30),
            UpdateProfileForm(),
          ],
        ),
      ),
    );
  }
}
