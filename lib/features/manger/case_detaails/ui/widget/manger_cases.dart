import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

class ManagerCases extends StatelessWidget {
  const ManagerCases({
    super.key,
  });

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
              'Ebrahem Khaled',
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
              '24 year',
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
              '0112348412',
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
              '10. / 10. / 2022',
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
              'Amr Mohamed',
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
              '10. / 10. / 2022',
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
              'Process',
              style: TextStyles.font14lightblack,
            ),
            horizontalSpace(5),
            Icon(
              Icons.timer,
              color: ColorsApp.oringe,
            ),
          ],
        ),
        virticalspace(15),
        Text(
          'Case Description',
          style: TextStyles.font14grey,
        ),
        virticalspace(10),
        Text(
          "Details note : Lorem Ipsum is simply dummy\ntext of the printing and typesetting industry.\nLorem Ipsum has been the industry's",
          style: TextStyles.font14lightblack,
        ),
      ],
    );
  }
}
