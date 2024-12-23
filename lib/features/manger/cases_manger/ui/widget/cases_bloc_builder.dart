

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/features/manger/cases_manger/logic/cases_cubit.dart';
import 'package:hospital_mange/features/manger/cases_manger/logic/cases_state.dart';
import 'package:hospital_mange/features/manger/cases_manger/ui/widget/list_view_cases.dart';

import '../../../../../core/theming/colors.dart';

class CasesBlocBuilder extends StatelessWidget {
  const CasesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CasesCuibt, CasesState>(
      builder: (context, state) {
        // ignore: unused_label
        buildWhen:
        (previous, current) =>
            current is CasesLoading || current is CasesSuccess || current is CasesError;
        return state.maybeWhen(
          loading: () => Center(
              child: CircularProgressIndicator(
            backgroundColor: ColorsApp.gray,
            color: ColorsApp.mainColor,
          )),
          success: (casesResponse) => ListViewCases(
            cases: casesResponse.calls,
          ),
          error: (error) => const Center(child: CircularProgressIndicator()),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
