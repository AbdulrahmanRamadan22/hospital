import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/sixbox.dart';
import '../../../../../core/theming/colors.dart';
import '../../../../../core/theming/style.dart';

class DetailsOfProfile extends StatelessWidget {
  final String? role;
  final String? email;
  final String? phone;
  final String? address;
  final String? birthdate;
  final String? status;
  final String? name;
  final String? gender;

  const DetailsOfProfile(
      {super.key,
      this.role,
      this.email,
      this.phone,
      this.address,
      this.birthdate,
      this.status,
      this.name,
      this.gender});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
        vertical: 20.h,
      ),
      decoration: BoxDecoration(
        color: ColorsApp.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.local_hospital_outlined,
                  size: 25,
                  color: ColorsApp.mainColor,
                ),
              ),
              horizontalSpace(10),
              Text(
                'Specialist - ${role ?? 'role'}',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.transgender_rounded,
                  size: 25,
                  color: ColorsApp.mainColor,
                ),
              ),
              horizontalSpace(10),
              Text(
                gender ?? 'gender',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.date_range,
                  size: 25,
                  color: ColorsApp.mainColor,
                ),
              ),
              horizontalSpace(10),
              Text(
                birthdate ?? 'birthdate',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.location_on_outlined,
                  size: 25,
                  color: ColorsApp.mainColor,
                ),
              ),
              horizontalSpace(10),
              Text(
                address ?? 'address',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.favorite_outline_rounded,
                  size: 25,
                  color: ColorsApp.mainColor,
                ),
              ),
              horizontalSpace(10),
              Text(
                status ?? 'status',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.email_outlined,
                  size: 25,
                  color: ColorsApp.mainColor,
                ),
              ),
              horizontalSpace(10),
              Text(
                email ?? 'email',
                style: TextStyles.font13black,
              ),
            ],
          ),
          virticalspace(25),
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ColorsApp.transheavenly,
                ),
                child: Icon(
                  Icons.phone_outlined,
                  size: 25,
                  color: ColorsApp.mainColor,
                ),
              ),
              horizontalSpace(10),
              Text(
                phone ?? 'phone',
                style: TextStyles.font13black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
