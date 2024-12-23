import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/features/manger/cases_manger/ui/widget/cases_bloc_builder.dart';

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
            CasesBlocBuilder(),
            // const IconsAndNamedAndButtons(),
            // virticalspace(20),
            // const IconsAndNamedAndButtons(),
          ],
        ),
      ),
    );
  }
}
