import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hospital_mange/core/theming/colors.dart';
import 'package:hospital_mange/core/theming/style.dart';

// ignore: must_be_immutable
class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final String? labelText;
  final TextInputType? keyboardType;

  final bool? isObscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  final Color? backgroundColor;
  Function(String?)? validator;

  TextEditingController? controller;

  AppTextFormField(
      {super.key,
      this.contentPadding,
      this.prefixIcon,
      this.keyboardType,
      this.labelText,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor,
      this.validator,
      this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) => validator!(value),
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsApp.lightheavenly,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorsApp.graywhight,
                width: 1.3,
              ),
              borderRadius: BorderRadius.circular(12.0),
            ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1.3,
          ),
          borderRadius: BorderRadius.circular(12.0),
        ),
        hintStyle: hintStyle ?? TextStyles.font14grey,
        hintText: hintText,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        fillColor: backgroundColor ?? ColorsApp.white,
        filled: true,
      ),
      obscureText: isObscureText ?? false,

      // style: TextStyles.font14DarkBlueMedium,
    );
  }
}
