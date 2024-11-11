import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/routing/routs.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/widget/custom_card.dart';

class CategoresManger extends StatelessWidget {
  const CategoresManger({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          // mainAxisExtent: 250,
          childAspectRatio: 0.7,
        ),

        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),

        children: [
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.casesMangerScreen);
            },
            child: CustomCard(
              icon: Icons.add_location_outlined,
              title: 'Cases',
              backGroundColor: ColorsApp.lightblue,
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     context.pushNamed(Routes.casesMangerScreen);
          //   },
          //   child: CustomCard(
          //     icon: Icons.check_box_outlined,
          //     title: 'Tasks',
          //     backGroundColor: ColorsApp.mainGreen,
          //   ),
          // ),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.employeesScreen);
            },
            child: CustomCard(
              icon: Icons.account_box,
              title: 'Employee',
              backGroundColor: ColorsApp.mainyellow.withRed(
                460,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.casesMangerScreen);
            },
            child: CustomCard(
              icon: Icons.fingerprint,
              title: 'attendance-leaving',
              backGroundColor: ColorsApp.mainColor,
            ),
          ),
        ]);
  }
}
