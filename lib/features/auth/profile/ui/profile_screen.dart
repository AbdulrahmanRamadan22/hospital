import 'package:flutter/material.dart';
import 'package:hospital_mange/features/auth/profile/ui/widgets/profile_bloc_builder.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.darkheavenly,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: ColorsApp.white),
        backgroundColor: ColorsApp.darkheavenly,
        elevation: 0,
        title: Text('My Profile', style: TextStyles.font17white),
        centerTitle: true,
      ),
      body: const ProfileBlocBuilder(),
    );
  }
}
