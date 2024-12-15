import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/constants.dart';
import 'package:hospital_mange/features/auth/login/ui/login_screen.dart';
import 'package:hospital_mange/features/doctor/home/ui/home_doctor_screen.dart';
import 'package:hospital_mange/features/manger/home_manger/ui/home_manger_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    switch (SharedPrefValues.role) {
      case "Doctor":
        return const HomeDoctorScreen();
      case "Manager":
        return const HomeMangerScreen();
      // case "employee":
      // return const HomeMangerScreen();

      default:
        return const LoginScreen();
    }
  }
}
