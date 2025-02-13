import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/widgets/app_logo.dart';
import 'package:quick_mart_app/core/widgets/custom_cached_network_image.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/home/presentation/widgets/home_view_body.dart';

import '../../../../core/api/api_keys.dart';
import '../../../../core/databases/my_cach-helper.dart';
import '../../../../core/services/services_locator.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context,
        title: AppLogo(),
        actions: [
          InkWell(
            onTap: () {},
            child: SvgPicture.asset(context.image.searchIcon),
          ),
          SizedBox(width: 20),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: customCachedNetworkImageprovider(
                    getit.get<CacheHelper>().getString(ApiKeys.image) ?? '')),
          ),
          SizedBox(width: 12),
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
