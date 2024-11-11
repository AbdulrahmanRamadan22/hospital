import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/widget/custom_app_bar.dart';
import 'package:hospital_mange/features/doctor/home/ui/widgets/categores_doctor.dart';

class HomeDoctorScreen extends StatelessWidget {
  const HomeDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 18.w,
            vertical: 20.h,
          ),
          child: Column(
            children: [
              virticalspace(10),
              const CustomImageAndNameAndSpecialty(),
              // virticalspace(20),
              const Expanded(child: CategoresDoctor()),
            ],
          ),
        ),
      ),
    );
  }
}