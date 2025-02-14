import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../../../../auth/data/repos/auth_repo_implementation.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.authRepoImplementation})
      : super(ProfileInitial());
  final AuthRepoImplementation authRepoImplementation;
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
