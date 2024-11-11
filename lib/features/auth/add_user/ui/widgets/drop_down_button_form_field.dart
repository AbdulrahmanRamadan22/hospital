// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/colors.dart';

class DropDownFormField extends StatefulWidget {
  final List<String>? options;
  final String? initialValue;
  /////////////////////////// textformfiled
  final InputBorder? focuseBorder;
  final InputBorder? enableBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hinttext;
  final String? labletext;
  final String? Function(String?)? validator;
  final bool? isObscureText;
  final EdgeInsetsGeometry? contentpadding;
  final TextInputType? keyboardType;
  final Widget? suffixicon;
  final Widget? prefixicon;
  final Color? fillColor;
  final TextEditingController? controller;
  Function(String?)? onChanged;

  DropDownFormField({
    super.key,
    this.options,
    this.initialValue,
    this.focuseBorder,
    this.enableBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hinttext,
    this.labletext,
    this.validator,
    this.isObscureText,
    this.contentpadding,
    this.keyboardType,
    this.suffixicon,
    this.prefixicon,
    this.fillColor,
    this.controller,
    this.onChanged,
  });

  @override
  _DropDownFormFieldState createState() => _DropDownFormFieldState();
}

class _DropDownFormFieldState extends State<DropDownFormField> {
  final _formKey = GlobalKey<FormState>();
  String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButtonFormField<String>(
          hint: Text(
            widget.hinttext,
          ),
          iconSize: 25.h,
          icon: const Icon(
            Icons.arrow_drop_down,
          ),
          decoration: InputDecoration(
            prefixIcon: widget.prefixicon,
            suffixIcon: widget.suffixicon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsApp.graywhight,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsApp.lightgreen,
              ),
            ),
          ),
          value: _selectedValue,
          items: widget.options
              ?.map(
                (option) => DropdownMenuItem(
                  value: option,
                  child: Text(option),
                ),
              )
              .toList(),
          validator: (value) {
            return widget.validator!(value);
          },
          onChanged: (widget.onChanged),
        ),
      ],
    );
  }
}
