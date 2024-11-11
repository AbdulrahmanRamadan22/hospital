import 'package:flutter/material.dart';
import 'package:hospital_mange/features/auth/profile/ui/widgets/details_of_profile.dart';
import 'package:hospital_mange/features/auth/profile/ui/widgets/image_profile_and_edit.dart';

import '../../../../../core/helper/constants.dart';
import '../../../../../core/helper/shared_pref_helper.dart';
import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/style.dart';

class ProfileBodyView extends StatelessWidget {
  const ProfileBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        virticalspace(10),
        ImageProfileAndEdit(
          image: SharedPrefHelper.getData(key: SharedPrefKeys.image),
        ),
        virticalspace(20),
        Text("${SharedPrefHelper.getData(key: SharedPrefKeys.name)}",
            style: TextStyles.font20white),
        virticalspace(5),
        Expanded(
          child: DetailsOfProfile(
            address: SharedPrefHelper.getData(key: SharedPrefKeys.address),
            email: SharedPrefHelper.getData(key: SharedPrefKeys.email),
            phone: SharedPrefHelper.getData(key: SharedPrefKeys.phone),
            birthdate: SharedPrefHelper.getData(key: SharedPrefKeys.birthdate),
            gender: SharedPrefHelper.getData(key: SharedPrefKeys.gender),
            status: SharedPrefHelper.getData(key: SharedPrefKeys.status),
            name: SharedPrefHelper.getData(key: SharedPrefKeys.name),
            role: SharedPrefHelper.getData(key: SharedPrefKeys.role),
          ),
        ),
      ],
    );
  }
}
