import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hospital_mange/core/theming/colors.dart';

class ImageProfileAndEdit extends StatelessWidget {
  final String? image;

  const ImageProfileAndEdit({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CachedNetworkImage(
          imageUrl: image ?? "",
          imageBuilder: (context, imageProvider) => CircleAvatar(
            radius: 60,
            backgroundImage: CachedNetworkImageProvider(image ?? ""),
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
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.mode_edit_outline_outlined,
                color: ColorsApp.lightblack,
                size: 25.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
