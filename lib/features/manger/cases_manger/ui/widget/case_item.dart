import 'package:flutter/material.dart';
import 'package:hospital_mange/features/manger/cases_manger/data/models/case_model.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';
import '../../../../../core/widget/app_text_button.dart';
import '../../../../../core/widget/custom_item_card.dart';

class CaseItem extends StatelessWidget {
  final CallModel? caseModel;

  const CaseItem({
    super.key,
    this.caseModel,
  });

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
            CustomItemCard(
              icon: Icons.account_circle_outlined,
              text: '${caseModel?.name}',
            ),
            virticalspace(13),
            CustomItemCard(
                icon: Icons.date_range,
                text:
                    "${(DateTime.parse('${caseModel?.createdAt}')).year}-${(DateTime.parse('${caseModel?.createdAt}')).month.toString().padLeft(2, '0')}-${(DateTime.parse('${caseModel?.createdAt}')).day.toString().padLeft(2, '0')}"),
            virticalspace(20),
            AppTextButton(
              buttonWidth: 230,
              buttonHeight: 50,
              buttonText: 'Show Details',
              textStyle: TextStyles.font17white,
              onPressed: () {
                // context.pushNamed(Routes.casesDetailsScreen);
              },
            ),
            virticalspace(5),
          ],
        ),
      ),
    );
  }
}
