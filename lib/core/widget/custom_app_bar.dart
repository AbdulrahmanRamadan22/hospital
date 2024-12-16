import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/constants.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/helper/shared_pref_helper.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

import '../../../../../core/routing/routs.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CustomImageAndNameAndSpecialty extends StatelessWidget {
  const CustomImageAndNameAndSpecialty({super.key});

  @override
  Widget build(BuildContext context) {
    final imageUrl = SharedPrefHelper.getData(key: SharedPrefKeys.image);

    // final profileImage = SharedPrefHelper.getData(key: SharedPrefKeys.image);

    return Card(
      color: ColorsApp.white,
      elevation: 0,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: GestureDetector(
            onTap: () {
              context.pushNamed(Routes.myProfile);
            },
            child: CachedNetworkImage(
              imageUrl: imageUrl ?? "",

              height: 45.h, // you can adjust this as needed
              placeholder: (context, url) => CircularProgressIndicator(
                color: ColorsApp.mainColor,
              ), // a loading indicator
              errorWidget: (context, url, error) =>
                  const Icon(Icons.error), // error icon
            ),
          ),
        ),
        title: Text(
          "${SharedPrefHelper.getData(key: SharedPrefKeys.name)}",
          style: TextStyles.font17Black,
        ),
        subtitle: Text(
          "Specialist , ${SharedPrefHelper.getData(key: SharedPrefKeys.role)}",
          style: TextStyles.font12mainheavenly,
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Badge.count(
            count: 3,
            child: const Icon(Icons.notifications_outlined),
          ),
        ),
      ),
    );
  }
}
