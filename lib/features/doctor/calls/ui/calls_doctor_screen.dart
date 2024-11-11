import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/features/doctor/calls/ui/widgets/custom_card_call.dart';

class CallsDoctorScreen extends StatelessWidget {
  const CallsDoctorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorsApp.backgroundColor,
        title: Text('Calls', style: TextStyles.font17Black),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 18.w,
          vertical: 20.h,
        ),
        child: const Column(
          children: [
            CustomCardCall(),
          ],
        ),
      ),
    );
  }
}
