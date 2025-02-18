import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/utils/app_images.dart';
import 'package:quick_mart_app/features/categories/presentation/views/categories_view.dart';
import 'package:quick_mart_app/features/home/presentation/view/home_view.dart';

import '../../features/auth/data/repos/auth_repo_implementation.dart';
import '../../features/home/data/repos/home_repo_impl.dart';
import '../../features/home/presentation/manager/home_cubit/home_cubit.dart';
import '../../features/profile/presentation/manager/cubit/profile_cubit.dart';
import '../../features/profile/presentation/view/profile_view.dart';
import '../manager/products_cubit/products_cubit.dart';
import '../manager/repo/product_repo_impl.dart';
import '../services/services_locator.dart';

class QuickMartAppViews extends StatefulWidget {
  const QuickMartAppViews({super.key});

  @override
  State<QuickMartAppViews> createState() => _QuickMartAppViewsState();
}

class _QuickMartAppViewsState extends State<QuickMartAppViews> {
  final PageController _pageController = PageController();
  int pageIndex = 0;
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CupertinoTabBar(
        activeColor: context.color.cyan,
        currentIndex: pageIndex,
        inactiveColor: context.color.grey150,
        backgroundColor: context.color.mainColor,
        height: 70,
        iconSize: 35,
        onTap: (index) {
          _pageController.jumpToPage(index);
          pageIndex = index;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Assets.imagesHomeCyan),
            icon: SvgPicture.asset(context.image.homeIcon),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Assets.imagesCategoryCyan),
            icon: SvgPicture.asset(context.image.categoriesIcon),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Assets.imagesMyCartCyan),
            icon: SvgPicture.asset(context.image.myCartIcon),
            label: "My Cart",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Assets.imagesHeartCyan),
            icon: SvgPicture.asset(context.image.heartIcon),
            label: "Wishlist",
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(Assets.imagesProfileCyan),
            icon: SvgPicture.asset(context.image.profileIcon),
            label: "Profile",
          ),
        ],
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider<HomeCubit>(
            create: (context) =>
                HomeCubit(homeRepoImpl: getit.get<HomeRepoImpl>()),
          ),
          BlocProvider<ProfileCubit>(
            create: (context) => ProfileCubit(
                authRepoImplementation: getit.get<AuthRepoImplementation>())
              ..getUserProfile(),
          ),
          BlocProvider<ProductsCubit>(
            create: (context) =>
                ProductsCubit(productRepoImpl: ProductRepoImpl())
                  ..getAllProducts()
                  ..getCategories(),
          ),
        ],
        child: PageView(
          onPageChanged: (index) {},
          physics: const NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: const [
            HomeView(),
            CategoriesView(),
            SizedBox(),
            SizedBox(),
            ProfileView(),
          ],
        ),
      ),
    );
  }
}
