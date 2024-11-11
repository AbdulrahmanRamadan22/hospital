import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/core/widget/app_text_button.dart';
import 'package:hospital_mange/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:hospital_mange/features/auth/login/ui/widgets/login_bloc_listener.dart';
import 'package:hospital_mange/features/auth/login/ui/widgets/login_form.dart';
import 'package:hospital_mange/features/auth/login/ui/widgets/login_welcome_page.dart';

import '../../../../core/theming/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back_ground.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      virticalspace(120),
                      const LoginWelcomeScreen(),
                      virticalspace(40),
                      const LoginForm(),
                      virticalspace(50),
                      AppTextButton(
                        backgroundColor: ColorsApp.mainColor,
                        horizontalPadding: 130,
                        buttonHeight: 60,
                        buttonText: 'Login',
                        textStyle: TextStyles.font17white,
                        onPressed: () {
                          vaildateGoLoding(context);
                        },
                      ),
                      const LoginBlocListener(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void vaildateGoLoding(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLogin();
    }
  }
}
