import 'package:flutter/material.dart';
import 'package:oud_calculator/utils/app_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String title;

  const CustomButton({Key key, this.onPressed, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: AppUi.colors.redApp, width: 1, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(50)),
        color: AppUi.colors.redApp,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
        onPressed: onPressed,
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4
              .copyWith(color: Colors.white),
        ));
  }
}
