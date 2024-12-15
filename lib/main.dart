

import 'package:flutter/widgets.dart';

import 'core/di/dependancy_ingection.dart';
import 'core/helper/shared_pref_helper.dart';
import 'core/routing/app_router.dart';
import 'hospital_mangement.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefHelper.init();
  setupGetIt();
  runApp(
    HospitalManagement(
      appRouter: AppRouter(),
    ),
  );
}
