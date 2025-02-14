import 'package:flutter/material.dart';
import 'package:quick_mart_app/core/extensions/context_extention.dart';

import '../../../../core/api/api_keys.dart';
import '../../../../core/databases/my_cach-helper.dart';
import '../../../../core/services/services_locator.dart';
import '../../../../core/widgets/custom_cached_network_image.dart';

class CustomEditProfileImage extends StatelessWidget {
  const CustomEditProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            image: customCachedNetworkImageprovider(
              getit.get<CacheHelper>().getString(ApiKeys.image) ?? '',
            ),
            shape: BoxShape.circle,
            color: context.color.textColor,
            border: Border.all(
              color: context.color.cyan,
              width: 1,
            ),
          ),
        ),
        Positioned(
          right: 3,
          bottom: 3,
          child: CircleAvatar(
            backgroundColor: context.color.grey50,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_a_photo_outlined,
                color: context.color.textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
