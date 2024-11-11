import 'package:flutter/material.dart';
import 'package:hospital_mange/features/auth/profile/ui/widgets/details_of_profile.dart';
import 'package:hospital_mange/features/auth/profile/ui/widgets/image_profile_and_edit.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/style.dart';
import '../../data/models/user_model.dart';

class ProfileBodyView extends StatelessWidget {
  final UserModel? userModel;
  const ProfileBodyView({
    super.key,
    this.userModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        virticalspace(10),
        ImageProfileAndEdit(
          image: userModel?.employee?.secureUrl,
        ),
        virticalspace(20),
        Text("${userModel?.employee?.name}", style: TextStyles.font20white),
        virticalspace(5),
        Expanded(
          child: DetailsOfProfile(
            employee: userModel?.employee,
          ),
        ),
      ],
    );
  }
}
