import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/features/manger/cases_manger/ui/widget/custom_card_case.dart';
import 'package:hospital_mange/features/manger/cases_manger/ui/widget/icon_and_named_and_buttons.dart';

class CasesMangerScreen extends StatelessWidget {
  const CasesMangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorsApp.backgroundColor,
        title: Text('Cases', style: TextStyles.font17Black),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 17.w,
          vertical: 20.h,
        ),
        child: const Column(
          children: [
            CustomCardCase(),
            // const IconsAndNamedAndButtons(),
            // virticalspace(20),
            // const IconsAndNamedAndButtons(),
          ],
        ),
      ),
    );
  }
}
