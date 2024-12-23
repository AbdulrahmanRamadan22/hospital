import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/features/manger/case_detaails/ui/widget/manger_cases.dart';
import 'package:hospital_mange/features/manger/cases_manger/data/models/case_model.dart';

class CaseDetailsScreen extends StatelessWidget {
  final CallModel? caseModel;
  const CaseDetailsScreen({super.key,this.caseModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsApp.white,
        centerTitle: true,
        title: Text(
          'Ces Details',
          style: TextStyles.font17Black,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 15.h,
            horizontal: 15.w,
          ),
          child: Column(
            children: [
               ManagerCases(
                caseModel: caseModel,
              ),
              virticalspace(16),
            ],
          ),
        ),
      ),
    );
  }
}
