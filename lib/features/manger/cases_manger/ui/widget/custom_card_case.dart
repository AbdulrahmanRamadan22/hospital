import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/core/widget/app_text_button.dart';

import '../../../../../core/routing/routs.dart';
import '../../../../../core/widget/custom_item_card.dart';

class CustomCardCase extends StatelessWidget {
  const CustomCardCase({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorsApp.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: ColorsApp.graywhight,
          width: 0.7,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CustomItemCard(
              icon: Icons.account_circle_outlined,
              text: 'Abdelrahman Ramadan',
            ),
            virticalspace(13),
            const CustomItemCard(
              icon: Icons.date_range,
              text: '24 .04 .2021',
            ),
            virticalspace(20),
            AppTextButton(
              buttonWidth: 230,
              buttonHeight: 50,
              buttonText: 'Show Details',
              textStyle: TextStyles.font17white,
              onPressed: () {
                context.pushNamed(Routes.casesDetailsScreen);
              },
            ),
            virticalspace(5),
          ],
        ),
      ),
    );
  }
}
