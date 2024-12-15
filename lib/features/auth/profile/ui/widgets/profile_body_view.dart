import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/core/helper/extintion.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/widget/app_text_button.dart';
import 'package:hospital_mange/features/auth/profile/data/models/update_profile.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_cubit.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_state.dart';
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
    return SingleChildScrollView(
      child: Column(
        children: [
          virticalspace(10),
          ImageProfileAndEdit(
            image: SharedPrefHelper.getData(key: SharedPrefKeys.image),
          ),
          virticalspace(20),
          Text("${SharedPrefHelper.getData(key: SharedPrefKeys.name)}",
              style: TextStyles.font20white),
          virticalspace(5),
          BlocConsumer<ProfileCuibt, ProfileState>(
            listenWhen: (previous, current) =>
                current is UpdateProfileStateloading ||
                current is UpdateProfileStatesuccess ||
                current is UpdateProfileStateerror,
            listener: (context, state) {
              state.whenOrNull(
                updateProfileStateloading: () {},
                updateProfileStatesuccess: () {
                  context.pop();
                },
                updateProfileStateerror: (error) {},
              );
            },
            builder: (context, state) {
              return Column(
                children: [
                  AppTextButton(
                    buttonWidth: 150,
                    buttonText: 'Save',
                    textStyle: TextStyles.font17white,
                    onPressed: () {
                      context.read<ProfileCuibt>().emitUpdateProfile();
                    },
                  ),
                  virticalspace(10),
                  if (state == const ProfileState.updateProfileStateloading())
                    LinearProgressIndicator(
                      color: ColorsApp.mainColor,
                    ),
                ],
              );
            },
          ),
          DetailsOfProfile(
            address: SharedPrefHelper.getData(key: SharedPrefKeys.address),
            email: SharedPrefHelper.getData(key: SharedPrefKeys.email),
            phone: SharedPrefHelper.getData(key: SharedPrefKeys.phone),
            birthdate: SharedPrefHelper.getData(key: SharedPrefKeys.birthdate),
            gender: SharedPrefHelper.getData(key: SharedPrefKeys.gender),
            status: SharedPrefHelper.getData(key: SharedPrefKeys.status),
            name: SharedPrefHelper.getData(key: SharedPrefKeys.name),
            role: SharedPrefHelper.getData(key: SharedPrefKeys.role),
          ),
        ],
      ),
    );
  }
}
