import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hospital_mange/features/manger/empolyee/data/models/employee_model.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';

class EmployeeItem extends StatelessWidget {
  final Employees? employees;

  const EmployeeItem({
    super.key,
    this.employees,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                scale: 1.0,
                "${employees?.secureUrl.toString()}",
                // ?? "https://res.cloudinary.com/dpq8atnxn/image/upload/v1730498228/waghed_d4pxmc.jpg",
              ),
            ),
            Positioned(
              right: 1,
              bottom: 7,
              child: CircleAvatar(
                radius: 7,
                backgroundColor: ColorsApp.mainGreen,
              ),
            ),
          ],
        ),
        horizontalSpace(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              employees?.name ?? "name",
              style: TextStyles.font15black,
            ),
            virticalspace(3),
            Text(
              'Specialist-${employees?.role ?? "roll"}',
              style: TextStyles.font14grey,
            ),
          ],
        )
      ],
    );
  }
}
