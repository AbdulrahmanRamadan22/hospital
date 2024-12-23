

import 'package:flutter/material.dart';
import 'package:hospital_mange/features/manger/cases_manger/ui/widget/case_item.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../data/models/case_model.dart';

class ListViewCases extends StatelessWidget {

    final List<CallModel>? cases;



  const ListViewCases({super.key, this.cases});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => virticalspace(16),
        padding: EdgeInsets.zero,
        itemCount: cases?.length ?? 0,
        itemBuilder: (context, index) {
          return CaseItem(
            caseModel: cases?[index],
          );
        },
      ),
    );
  }
}
