import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/features/manger/cases_manger/data/models/case_model.dart';

class ManagerCases extends StatelessWidget {
  final CallModel? caseModel;
  const ManagerCases({super.key, this.caseModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          decoration: BoxDecoration(
            color: ColorsApp.mainColor,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              color: ColorsApp.graywhight,
            ),
          ),
          child: Text(
            'Case',
            style: TextStyles.font17white,
          ),
        ),
        virticalspace(15),
        Row(
          children: [
            Text(
              'Patient Name',
              style: TextStyles.font14grey,
            ),
            const Spacer(),
            Text(
              '${caseModel?.name}',
              style: TextStyles.font14lightblack,
            )
          ],
        ),
        virticalspace(15),
        Row(
          children: [
            Text(
              'Age',
              style: TextStyles.font14grey,
            ),
            const Spacer(),
            Text(
              '${caseModel?.age}',
              style: TextStyles.font14lightblack,
            )
          ],
        ),
        virticalspace(15),
        Row(
          children: [
            Text(
              'Phone Number',
              style: TextStyles.font14grey,
            ),
            const Spacer(),
            Text(
              '${caseModel?.phone}',
              style: TextStyles.font14lightblack,
            )
          ],
        ),
        virticalspace(15),
        Row(
          children: [
            Text(
              'Date',
              style: TextStyles.font14grey,
            ),
            const Spacer(),
            Text(
              "${(DateTime.parse('${caseModel?.createdAt}')).year}-${(DateTime.parse('${caseModel?.createdAt}')).month.toString().padLeft(2, '0')}-${(DateTime.parse('${caseModel?.createdAt}')).day.toString().padLeft(2, '0')}",
              style: TextStyles.font14lightblack,
            )
          ],
        ),
        virticalspace(15),
        Row(
          children: [
            Text(
              'Docotr',
              style: TextStyles.font14grey,
            ),
            const Spacer(),
            Text(
              '${caseModel?.doctor}',
              style: TextStyles.font14lightblack,
            )
          ],
        ),
        virticalspace(15),
        Row(
          children: [
            Text(
              'Status',
              style: TextStyles.font14grey,
            ),
            const Spacer(),
            Text(
              '${caseModel?.status}',
              style: TextStyles.font14lightblack,
            ),
            horizontalSpace(5),
            Icon(
              caseModel?.status == "InProgress"
                  ? Icons.timer
                  : caseModel?.status == "Completed"
                      ? Icons.check_circle
                      : caseModel?.status == "Cancelled"
                          ? Icons.cancel
                          : Icons.help,
              color: ColorsApp.oringe,
              // Default icon
            ),
          ],
        ),
        virticalspace(30),
        Text(
          'Case Description',
          style: TextStyles.font14grey,
        ),
        virticalspace(10),
        Text(
          '${caseModel?.cDescription}',
          style: TextStyles.font14lightblack,
        ),
      ],
    );
  }
}
