import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/theming/style.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_cubit.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_state.dart';
import 'package:hospital_mange/features/auth/profile/ui/widgets/details_of_profile.dart';
import 'package:hospital_mange/features/auth/profile/ui/widgets/image_profile_and_edit.dart';
import '../../../../../core/helper/constants.dart';
import '../../../../../core/helper/shared_pref_helper.dart';
import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../../../../core/widget/app_text_button.dart';

class ProfileBodyView extends StatelessWidget {
  const ProfileBodyView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCuibt, ProfileState>(
      listenWhen: (previous, current) =>
          current is UpdateProfileStateLoading ||
          current is UpdateProfileStateSuccess ||
          current is UploadingProfilePic ||
          current is UpdateProfileStateError,
      listener: (context, state) {},
      builder: (context, state) {
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
              virticalspace(10),
              state is UpdateProfileStateLoading
                  ? CircularProgressIndicator(
                      color: ColorsApp.mainGreen,
                    )
                  : AppTextButton(
                      buttonText: "save changes",
                      buttonWidth: 150.w,
                      backgroundColor: ColorsApp.mainGreen,
                      textStyle: TextStyles.font17white,
                      onPressed: () {
                        context.read<ProfileCuibt>().emitUpdateProfile();
                      },
                    ),
              virticalspace(5),
              DetailsOfProfile(
                address: SharedPrefHelper.getData(key: SharedPrefKeys.address),
                email: SharedPrefHelper.getData(key: SharedPrefKeys.email),
                phone: SharedPrefHelper.getData(key: SharedPrefKeys.phone),
                birthdate:
                    SharedPrefHelper.getData(key: SharedPrefKeys.birthdate),
                gender: SharedPrefHelper.getData(key: SharedPrefKeys.gender),
                status: SharedPrefHelper.getData(key: SharedPrefKeys.status),
                name: SharedPrefHelper.getData(key: SharedPrefKeys.name),
                role: SharedPrefHelper.getData(key: SharedPrefKeys.role),
              ),
            ],
          ),
        );
      },
    );
  }
}
