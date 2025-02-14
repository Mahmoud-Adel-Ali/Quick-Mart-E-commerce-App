import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../../../../auth/data/repos/auth_repo_implementation.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit({required this.authRepoImplementation}) : super(ProfileInitial());
  final AuthRepoImplementation authRepoImplementation;
}
