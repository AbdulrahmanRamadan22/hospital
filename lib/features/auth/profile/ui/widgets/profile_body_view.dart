import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_cubit.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_state.dart';
import 'package:hospital_mange/features/auth/profile/ui/widgets/details_of_profile.dart';
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
    return BlocConsumer<ProfileCuibt, ProfileState>(
      listenWhen: (previous, current) =>
          current is UpdateProfileStateLoading ||
          current is UpdateProfileStateSuccess ||
          current is UpdateProfileStateError,
      listener: (context, state) {},
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            children: [
              virticalspace(10),
              // Stack(
              //   children: [
              //     CachedNetworkImage(
              //       imageUrl: image ?? "",
              //       imageBuilder: (context, imageProvider) =>
              //           context.read<ProfileCuibt>().profileImage == null
              //               ? CircleAvatar(
              //                   radius: 60,
              //                   backgroundImage:
              //                       CachedNetworkImageProvider(image ?? ""),
              //                 )
              //               : CircleAvatar(
              //                   radius: 60,
              //                   backgroundImage: FileImage(File(context
              //                       .read<ProfileCuibt>()
              //                       .profileImage!
              //                       .path)),
              //                 ),
              //       placeholder: (context, url) => CircularProgressIndicator(
              //         color: ColorsApp.mainColor,
              //       ),
              //       errorWidget: (context, url, error) =>
              //           const Icon(Icons.error),
              //     ),
              //     Positioned(
              //       left: 70,
              //       top: 80,
              //       child: Container(
              //         alignment: Alignment.center,
              //         height: 40,
              //         width: 40,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20.0),
              //           color: ColorsApp.white,
              //         ),
              //         child: GestureDetector(
              //           onTap: () {
              //             ImagePicker()
              //                 .pickImage(source: ImageSource.gallery)
              //                 .then((value) => null);
              //           },
              //           child: Icon(
              //             Icons.mode_edit_outline_outlined,
              //             color: ColorsApp.lightblack,
              //             size: 25.0,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              // ImageProfileAndEdit(
              //   image: SharedPrefHelper.getData(key: SharedPrefKeys.image),
              // ),
              virticalspace(20),
              Text("${SharedPrefHelper.getData(key: SharedPrefKeys.name)}",
                  style: TextStyles.font20white),
              virticalspace(5),

              // BlocConsumer<ProfileCuibt, ProfileState>(
              //   listenWhen: (previous, current) =>
              //       current is UpdateProfileStateLoading ||
              //       current is UpdateProfileStateSuccess ||
              //       current is UpdateProfileStateError,
              //   listener: (context, state) {
              //     state.whenOrNull(
              //       updateProfileStateLoading: () {},
              //       updateProfileStateSuccess: () {
              //         context.pop();
              //       },
              //       updateProfileStateError: (error) {},
              //     );
              //   },
              //   builder: (context, state) {
              //     return Column(
              //       children: [
              //         AppTextButton(
              //           buttonWidth: 150,
              //           buttonText: 'Save',
              //           textStyle: TextStyles.font17white,
              //           onPressed: () {
              //             context.read<ProfileCuibt>().emitUpdateProfile();
              //           },
              //         ),
              //         virticalspace(10),
              //         if (state ==
              //             const ProfileState.updateProfileStateLoading())
              //           LinearProgressIndicator(
              //             color: ColorsApp.mainColor,
              //           ),
              //       ],
              //     );
              //   },
              // ),

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
