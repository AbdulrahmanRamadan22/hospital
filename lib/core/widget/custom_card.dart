import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

class CustomCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color backGroundColor;

  const CustomCard({
    super.key,
    required this.icon,
    required this.title,
    required this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 163.w,
      height: 250.h,
      decoration: BoxDecoration(
        color: backGroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: ColorsApp.white,
                  width: 2.0,
                ),
              ),
              child: Icon(
                icon,
                color: Colors.white,
                size: 50,
              ),
            ),
            virticalspace(15),
            Text(
              title,
              style: TextStyles.font17white,
            ),
          ],
        ),
      ),
    );
  }
}
