import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/widget/custom_app_bar.dart';
import 'package:hospital_mange/core/widget/custom_card.dart';
import 'package:hospital_mange/features/resceptionist/ui/widgets/customs_cards.dart';

class HomeResecpion extends StatelessWidget {
  const HomeResecpion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 10.h,
          ),
          child: CustomCards(),
        ),
      ),
    );
  }
}

