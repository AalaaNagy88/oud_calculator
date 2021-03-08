import 'package:flutter/material.dart';
import 'package:oud_calculator/utils/app_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final TextInputType inputType;
  final TextDirection textDirection;
  const CustomField({
    Key key,
    this.textDirection,
    this.title,
    this.controller,
    this.inputType = TextInputType.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      textDirection: textDirection,
      autofocus: false,
      keyboardType: inputType,
      decoration: InputDecoration(
        labelText: title,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppUi.colors.accent),
          borderRadius: BorderRadius.circular(20.h),
        ),
        fillColor: AppUi.colors.accent,
      ),
    );
  }
}
