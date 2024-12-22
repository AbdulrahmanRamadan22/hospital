// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_cubit.dart';
import 'package:hospital_mange/features/auth/profile/logic/profile_cuibt_state.dart';
import 'package:image_picker/image_picker.dart';

class ImageProfileAndEdit extends StatelessWidget {
  final String? image;

  const ImageProfileAndEdit({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCuibt, ProfileState>(
      builder: (context, state) {
        return Stack(
          children: [
            CachedNetworkImage(
              imageUrl: image ?? "",
              imageBuilder: (context, imageProvider) =>
                  context.read<ProfileCuibt>().profileImage == null
                      ? CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              CachedNetworkImageProvider(image ?? ""),
                        )
                      : CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(File(
                              context.read<ProfileCuibt>().profileImage!.path)),
                        ),
              placeholder: (context, url) => CircularProgressIndicator(
                color: ColorsApp.mainColor,
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            Positioned(
              left: 70,
              top: 80,
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: ColorsApp.white,
                ),
                child: GestureDetector(
                  onTap: () {
                    ImagePicker()
                        .pickImage(source: ImageSource.gallery)
                        .then((value) {
                      if (value != null) {
                        context.read<ProfileCuibt>().uploadingProfilePic(value);
                        print(value.path);
                      }
                    });
                  },
                  child: Icon(
                    Icons.mode_edit_outline_outlined,
                    color: ColorsApp.lightblack,
                    size: 25.0,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
