import 'package:flutter/material.dart';
import 'package:hospital_mange/core/helper/sixbox.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

class CustomItemCard extends StatelessWidget {
  final IconData icon;

  final String text;

  const CustomItemCard({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: ColorsApp.mainColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(
            icon,
            size: 24,
            color: ColorsApp.white,
          ),
        ),
        horizontalSpace(13),
        Text(
          text,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyles.font14black,
        )
      ],
    );
  }
}
