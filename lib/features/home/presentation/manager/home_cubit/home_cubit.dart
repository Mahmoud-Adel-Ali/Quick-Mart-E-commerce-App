import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

import '../../../data/models/banner_model/banner_model/banner_data.dart';
import '../../../data/models/banner_model/banner_model/banner_model.dart';
import '../../../data/repos/home_repo_impl.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepoImpl}) : super(HomeInitial());

  final HomeRepoImpl homeRepoImpl;

  List<BannerData> bannerData = [];

  Future<void> getBannerData() async {
    emit(GetBannerDataLoadin());
    final result = await homeRepoImpl.getBannerData();
    result.fold((l) => emit(GetBannerDataError(errorMessage: l)),
        (bannerModel) {
      bannerData = bannerModel.data ?? [];
      emit(GetBannerDataSuccess(bannerModel: bannerModel));
    });
  }
}
