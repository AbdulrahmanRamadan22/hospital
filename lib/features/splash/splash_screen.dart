import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/features/auth/login/ui/login_screen.dart';

import '../../core/helper/sixbox.dart';
import '../../core/theming/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/welcome_page.png'),
                      virticalspace(40),

                      Text(
                        "Hospital Management",
                        style: TextStyle(
                          color: ColorsApp.transheavenly,
                          fontSize: 18..sp,
                        ),
                      ),
                      virticalspace(40),
                      //  Padding(

                      LinearProgressIndicator(
                        color: ColorsApp.transheavenly,
                        backgroundColor: ColorsApp.gray,
                      ),
                      virticalspace(40),

                      Text(
                        "Loading...",
                        style: TextStyle(
                          color: ColorsApp.transheavenly,
                          fontSize: 20.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
