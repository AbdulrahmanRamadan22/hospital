import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/widget/custom_app_bar.dart';
import 'package:hospital_mange/core/widget/custom_card.dart';

class CustomCards extends StatelessWidget {
  const CustomCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomImageAndNameAndSpecialty(),
        virticalspace(20),
        Row(
          children: [
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.callsReceptionScreen);
              },
              child: CustomCard(
                icon: Icons.add,
                title: 'Calls',
                backGroundColor: ColorsApp.lightblue,
              ),
            ),
            horizontalSpace(10),
            CustomCard(
              icon: Icons.check_box_outlined,
              title: 'Tasks',
              backGroundColor: ColorsApp.mainGreen,
            ),
          ],
        ),
        virticalspace(15),
        Row(
          children: [
            CustomCard(
              icon: Icons.report_sharp,
              title: 'Reports',
              backGroundColor: ColorsApp.purpol,
            ),
            horizontalSpace(10),
            CustomCard(
              icon: Icons.fingerprint_outlined,
              title: 'attendance - leaving',
              backGroundColor: ColorsApp.lightheavenly,
            ),
          ],
        ),
      ],
    );
  }
}
