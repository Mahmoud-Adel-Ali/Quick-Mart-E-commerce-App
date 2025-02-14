import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/features/profile/presentation/manager/cubit/profile_cubit.dart';

import '../../../../core/api/api_keys.dart';
import '../../../../core/databases/my_cach-helper.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/widgets/custom_cached_network_image.dart';
import '../../../../core/widgets/custom_toast_message.dart';

class CustomEditProfileImage extends StatelessWidget {
  const CustomEditProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileState>(
      listener: (context, state) {
        if (state is PickedProfileImageFailure) {
          CustomToastMessage().bottomToast(
            context,
            msg: 'No image selected',
            type: ToastMessageType.error,
          );
        }
      },
      builder: (context, state) {
        var cubit = context.read<ProfileCubit>();
        return Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: cubit.pickedImage != null
                    ? DecorationImage(
                        image: FileImage(File(cubit.pickedImage!.path))
                            as ImageProvider)
                    : customCachedNetworkImageprovider(
                        getit.get<CacheHelper>().getString(ApiKeys.image) ?? '',
                      ),
                shape: BoxShape.circle,
                color: context.color.textColor,
                border: Border.all(
                  color: context.color.cyan,
                  width: 1,
                ),
              ),
            ),
            Positioned(
              right: 3,
              bottom: 3,
              child: CircleAvatar(
                backgroundColor: context.color.grey50,
                child: IconButton(
                  onPressed: () {
                    cubit.pickProfileImage();
                  },
                  icon: Icon(
                    Icons.add_a_photo_outlined,
                    color: context.color.textColor,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
