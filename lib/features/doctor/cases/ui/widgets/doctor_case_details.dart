import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

class DoctorCasesDetails extends StatelessWidget {
  const DoctorCasesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'patientName',
              style: TextStyles.font14grey,
            ),
            const Spacer(),
            Text(
              'Ebrahem Khaled',
              style: TextStyles.font14lightblack,
            ),
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
              '24 years',
              style: TextStyles.font14lightblack,
            ),
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
              '0115515151',
              style: TextStyles.font14lightblack,
            ),
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
              '24. 4. 2022',
              style: TextStyles.font14lightblack,
            ),
          ],
        ),
        virticalspace(15),
        Row(
          children: [
            Text(
              'Doctoer',
              style: TextStyles.font14grey,
            ),
            const Spacer(),
            Text(
              'Mohamed Tarek',
              style: TextStyles.font14lightblack,
            ),
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
            horizontalSpace(13),
            Icon(
              Icons.check_box_outlined,
              color: ColorsApp.brown,
            ),
          ],
        ),
        virticalspace(15),
        Text(
          'Case Description',
          style: TextStyles.font14grey,
        ),
        virticalspace(15),
        Text(
          r'Details note : Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
          style: TextStyles.font14lightblack,
        )
      ],
    );
  }
}
