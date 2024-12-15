import 'package:flutter/material.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/features/resceptionist/calls/ui/widgets/datepicker.dart';

class CallsResecption extends StatelessWidget {
  const CallsResecption({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsApp.backgroundColor,
        title: const Text('Resecption Calls'),
        centerTitle: true,
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
