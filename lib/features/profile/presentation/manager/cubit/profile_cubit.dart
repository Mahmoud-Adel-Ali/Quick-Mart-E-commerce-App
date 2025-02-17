import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:quick_mart_app/core/api/api_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';

import '../../../../../core/services/services_locator.dart';
import '../../../../auth/data/repos/auth_repo_implementation.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.authRepoImplementation})
      : super(ProfileInitial());
  final AuthRepoImplementation authRepoImplementation;
  // name text field
  TextEditingController updateProfileName = TextEditingController(
      text: getit.get<CacheHelper>().getString(ApiKeys.name));
  //update profile form key
  GlobalKey<FormState> updateProfileFormKey = GlobalKey();
  // local user data
  String? userName,
      userImage,
      userPhone,
      userEmail,
      userPoints,
      userCredit,
      userToken;
  // change password form key
  GlobalKey<FormState> changePasswordFormKey = GlobalKey();
  // change password text fields
  TextEditingController currentPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmNewPassword = TextEditingController();
  //change password method
  void changePassword() async {
    emit(ChangePasswordLoading());
    final response = await authRepoImplementation.changePassword(
      currentPassword: currentPassword.text,
      newPassword: newPassword.text,
    );
    response.fold(
        (errorMessage) =>
            emit(ChangePasswordFailure(errorMessage: errorMessage)),
        (authModel) => emit(ChangePasswordSuccess()));
  }

  // get user data
  void getUserProfile() {
    userName = getit.get<CacheHelper>().getString(ApiKeys.name);
    userImage = getit.get<CacheHelper>().getString(ApiKeys.image);
    userPhone = getit.get<CacheHelper>().getString(ApiKeys.phone);
    userEmail = getit.get<CacheHelper>().getString(ApiKeys.email);
    userPoints = getit.get<CacheHelper>().getInt(ApiKeys.points).toString();
    userCredit = getit.get<CacheHelper>().getInt(ApiKeys.credit).toString();
    userToken = getit.get<CacheHelper>().getString(ApiKeys.token);
    emit(GetUserProfileSuccess());
  }

  // update profile method
  void updateProfile() async {
    emit(UpdateProfileLoading());
    final response = await authRepoImplementation.updateProfile(
      name: updateProfileName.text,
      image:
          pickedImage == null ? null : await convertXFileToBase64(pickedImage!),
    );
    response.fold(
        (errorMessage) =>
            emit(UpdateProfileFailure(errorMessage: errorMessage)),
        (authModel) => emit(UpdateProfileSuccess()));
  }

  // conver image from XFile to base64
  Future<String> convertXFileToBase64(XFile file) async {
    List<int> imageBytes = await file.readAsBytes();
    return base64Encode(imageBytes);
  }

  // pick image
  XFile? pickedImage;
  void pickProfileImage() async {
    emit(PickedProfileImageLoading());
    await ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
      if (value == null) {
        pickedImage = pickedImage;
        emit(PickedProfileImageFailure());
      } else {
        pickedImage = value;
        emit(PickedProfileImageSuccess());
      }
    });
  }
}
