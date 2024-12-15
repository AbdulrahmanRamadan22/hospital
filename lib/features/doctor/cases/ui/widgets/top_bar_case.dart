import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/core/widget/top_bar_case.dart';

class TopBarCase extends StatelessWidget {
  const TopBarCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomAppBarCases(
          title: 'Case',
          backGroundColor: ColorsApp.lightheavenly,
          textColor: TextStyles.font13white,
          width: 80.w,
          height: 50.h,
        ),
        horizontalSpace(10),
        CustomAppBarCases(
          title: 'Medical record',
          backGroundColor: ColorsApp.white,
          textColor: TextStyles.font13black,
          height: 50.h,
          width: 110.h,
        ),
        horizontalSpace(10),
        CustomAppBarCases(
          title: 'Medical measurement',
          backGroundColor: ColorsApp.white,
          textColor: TextStyles.font13black,
          width: 143.w,
          height: 50.h,
        ),
      ],
    );
  }
}
