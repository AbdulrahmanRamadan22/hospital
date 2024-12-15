// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

class CustomAppBarCases extends StatelessWidget {
  const CustomAppBarCases({
    super.key,
    required this.title,
    required this.backGroundColor,
    required this.textColor,
    required this.width,
    required this.height,
  });
  final String title;
  final Color backGroundColor;
  final TextStyle textColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: ColorsApp.graywhight),
        color: backGroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: textColor,
        ),
      ),
    );
  }
}
