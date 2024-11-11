import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routs.dart';
import 'core/theming/colors.dart';

class HospitalManagement extends StatelessWidget {
  final AppRouter appRouter;

  const HospitalManagement({super.key, required this.appRouter});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Hospital Management',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: ColorsApp.white,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.loginScreen,
      ),
    );
  }
}
