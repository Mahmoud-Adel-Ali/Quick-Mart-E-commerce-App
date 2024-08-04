import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';
import 'package:quick_mart_app/core/widgets/app_logo.dart';
import 'package:quick_mart_app/core/widgets/custom_cached_network_image.dart';
import 'package:quick_mart_app/core/widgets/custom_simple_app_bar.dart';
import 'package:quick_mart_app/features/home/presentation/widgets/home_view_body.dart';

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
          CustomCachedNetworkImage(
            height: 100,
            imgUrl:
                'https://s3-alpha-sig.figma.com/img/31ab/4cd0/7e04c1f4562075b2f3aae17db8f838f4?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RW2~8ShOzePIO744Yk4KLWdxzlmBmlmHCOMFVKV4aZorGB30CSEVq4Kzq8lmqUVq6~kDkd2NxrQBgT0hWQFg1l6gOpqpsxKaEa6IGesEWQsKpxX6gOVwia2RddYLkrTqg~PxL~cTWO5TQ4Glmug9qr8aJnf4533uIk3VqrW2KJhb4og0rxsKt~50F0poKEYN3eJ8~sNVY8j6VHWdJ~SO~mscj7aTpj9C6myajrDezRwyTlvSr16C0iC2so61ibqWQvNegZWVb6FpOyUpJGVrwJWJtbaFnZs1t-vS4yS73JL5qru-H9HCzu2YEkyp5j5lDVPqeQ1DCCPMmtLBPZmv4g__',
          ),
          SizedBox(width: 12),
        ],
      ),
      body: HomeViewBody(),
    );
  }
}
