import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quick_mart_app/core/app/cubit/app_cubit.dart';
import 'package:quick_mart_app/core/databases/cach_keys.dart';
import 'package:quick_mart_app/core/databases/my_cach-helper.dart';
import 'package:quick_mart_app/core/manager/products_cubit/products_cubit.dart';
import 'package:quick_mart_app/core/manager/repo/product_repo_impl.dart';
import 'package:quick_mart_app/core/services/services_locator.dart';
import 'package:quick_mart_app/quick_mart.dart';
import 'package:quick_mart_app/simple_bloc_observer.dart';

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
  ]).then((_) {
    runApp(MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
          create: (context) => AppCubit()
            ..changeAppThemeMode(
              sharedMode: CacheHelper().getBoolean(CachKeys.isDarkMode),
            ),
        ),
        BlocProvider<ProductsCubit>(
          create: (context) => ProductsCubit(productRepoImpl: ProductRepoImpl())
            ..getAllProducts()
            ..getCategories(),
        ),
      ],
      child: DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const QuickMart(), // Wrap your app
      ),
    ));
  });
}
