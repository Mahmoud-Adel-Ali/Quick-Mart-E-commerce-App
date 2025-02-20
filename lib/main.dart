import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/services/services_locator.dart';
import 'package:quick_mart_app/quick_mart.dart';
import 'package:quick_mart_app/simple_bloc_observer.dart';

import 'core/api/dio_consumer.dart';
import 'core/manager/products_cubit/products_cubit.dart';
import 'core/manager/repo/product_repo_impl.dart';
import 'features/auth/data/repos/auth_repo_implementation.dart';
import 'features/home/data/repos/home_repo_impl.dart';
import 'features/home/presentation/manager/home_cubit/home_cubit.dart';
import 'features/profile/presentation/manager/cubit/profile_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //observer state of cubits
  Bloc.observer = SimpleBlocObserver();
  setupServicesLocator();
  await getit<CacheHelper>().init();
  // this step used to set device not rotated
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then(
    (_) {
      runApp(
        MultiBlocProvider(
          providers: [
            BlocProvider<AppCubit>(
              create: (context) => AppCubit()
                ..changeAppThemeMode(
                  sharedMode: CacheHelper().getBoolean(CachKeys.isDarkMode),
                ),
            ),
            BlocProvider<HomeCubit>(
              create: (context) =>
                  HomeCubit(homeRepoImpl: getit.get<HomeRepoImpl>())
                    ..getBannerData(),
            ),
            BlocProvider<ProfileCubit>(
              create: (context) => ProfileCubit(
                  authRepoImplementation: getit.get<AuthRepoImplementation>())
                ..getUserProfile(),
            ),
            BlocProvider<ProductsCubit>(
              create: (context) => ProductsCubit(
                  productRepoImpl:
                      ProductRepoImpl(dio: getit.get<DioConsumer>()))
                ..getAllProducts()
                ..getCategories(),
            ),
          ],
          child: DevicePreview(
            enabled: !kReleaseMode,
            builder: (context) => const QuickMart(), // Wrap your app
          ),
        ),
      );
    },
  );
}
