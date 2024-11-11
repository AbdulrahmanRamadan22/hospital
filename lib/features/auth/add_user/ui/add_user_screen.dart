import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/features/auth/add_user/data/logic/cubit/sign_up_cubit.dart';
import 'package:hospital_mange/features/auth/add_user/ui/widgets/sign_up_form.dart';
import '../../../../core/theming/style.dart';
import '../../../../core/widget/app_text_button.dart';
import 'widgets/sign_up_bloc_listner.dart';

class AddUserScreen extends StatelessWidget {
  const AddUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ColorsApp.white,
      appBar: AppBar(
        surfaceTintColor: ColorsApp.white,
        elevation: 0,
        backgroundColor: ColorsApp.white,
        centerTitle: true,
        title: Text(
          'Add User',
          style: TextStyles.font17Black,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                'assets/images/RectangleTop.png',
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/Rectanglebutton.png',
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 18.w,
                vertical: 20.h,
              ),
              child: Column(
                children: [
                  const SignUpForm(),
                  virticalspace(15),
                  AppTextButton(
                    backgroundColor: ColorsApp.mainColor,
                    horizontalPadding: 100,
                    buttonHeight: 60,
                    buttonText: 'Create User',
                    textStyle: TextStyles.font14white,
                    onPressed: () {
                      validateThenDoSignup(context);
                    },
                  ),
                  const SignUpBlocListener(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignUpCubit>().formKey.currentState!.validate()) {
      context.read<SignUpCubit>().emitSignUp();
    }
  }
}
