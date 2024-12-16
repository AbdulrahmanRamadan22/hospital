import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/widget/custom_app_bar.dart';
import 'package:hospital_mange/features/manger/home_manger/ui/widgets/categorys_manger.dart';

class HomeMangerScreen extends StatelessWidget {
  const HomeMangerScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
       
              const CustomImageAndNameAndSpecialty(),
              virticalspace(10),
              const Expanded(child: CategoresManger()),
            ],
          ),
        ),
      ),
    );
  }
}
