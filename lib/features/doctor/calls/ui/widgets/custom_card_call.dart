import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/core/widget/app_text_button.dart';

import '../../../../../core/widget/custom_item_card.dart';

class CustomCardCall extends StatelessWidget {
  const CustomCardCall({super.key});

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
            virticalspace(30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextButton(
                  buttonWidth: 100.w,
                  icon: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsApp.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.done,
                      size: 20,
                      color: ColorsApp.white,
                    ),
                  ),
                  buttonText: 'Accept',
                  textStyle: TextStyles.font14white,
                  onPressed: () {},
                ),
                horizontalSpace(20),
                AppTextButton(
                  buttonWidth: 100.w,
                  backgroundColor: ColorsApp.oringe,
                  icon: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorsApp.white,
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Icon(
                      Icons.close,
                      color: ColorsApp.white,
                      size: 20,
                    ),
                  ),
                  buttonText: 'Busy',
                  textStyle: TextStyles.font14white,
                  onPressed: () {},
                ),
              ],
            ),
            virticalspace(10),
          ],
        ),
      ),
    );
  }
}
