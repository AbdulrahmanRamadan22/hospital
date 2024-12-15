// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';

import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/features/doctor/cases/ui/widgets/doctor_case_details.dart';
import 'package:hospital_mange/features/doctor/cases/ui/widgets/top_bar_case.dart';

class CasesDetails extends StatelessWidget {
  const CasesDetails({
    super.key,
    this.itemIndex,
  });
  final int? itemIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsApp.backgroundColor,
        title: Text(
          'Cases Details',
          style: TextStyles.font17Black,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.symmetric(
          horizontal: itemIndex == 5.w ? 0 : 12.w,
          vertical: 15.h,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBarCase(),
            virticalspace(20),
            const DoctorCasesDetails(),
            virticalspace(20),
            

          ],
        ),
      ),
    );
  }
}
