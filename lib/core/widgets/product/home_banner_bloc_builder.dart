import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'home_banner.dart';

class HomeBannerBlocBuilder extends StatelessWidget {
  const HomeBannerBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state is GetBannerDataSuccess
            ? HomeBanner(bannerModel: state.bannerModel)
            : SizedBox();
      },
    );
  }
}
