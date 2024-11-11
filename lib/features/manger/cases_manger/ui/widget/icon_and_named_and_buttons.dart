import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/core/widget/app_text_button.dart';
import 'package:hospital_mange/features/manger/cases_manger/ui/widget/icon_user_and_named.dart';

class IconsAndNamedAndButtons extends StatelessWidget {
  const IconsAndNamedAndButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 12.h,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const NamedAndIcons(),
          virticalspace(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppTextButton(
                horizontalPadding: 60,
                buttonWidth: 250,
                buttonHeight: 55,
                buttonText: 'Show Details',
                textStyle: TextStyles.font17white,
                onPressed: () {
                  context.pushNamed(Routes.casesDetailsScreen);
                },
              ),
              horizontalSpace(13),
            ],
          ),
          virticalspace(20),
        ],
      ),
    );
  }
}
