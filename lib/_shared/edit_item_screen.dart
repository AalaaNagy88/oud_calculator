import 'package:flutter/material.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/utils/app_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_button.dart';
import 'custom_field.dart';

class EditItemScreen extends StatelessWidget {
  final String appBarTitle;
  final String buttonTitle;
  final TextEditingController title;
  final TextEditingController gold;
  final TextEditingController sliver;
  final void Function() onPressed;

  const EditItemScreen(
      {Key key,
      this.appBarTitle,
      this.title,
      this.gold,
      this.sliver,
      this.buttonTitle,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(appBarTitle),
        ),
        resizeToAvoidBottomInset: true,
        body: Container(
          width: ScreenUtil().screenWidth,
          decoration: BoxDecoration(
              color: AppUi.colors.primary,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.w),
                  topRight: Radius.circular(50.w))),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: ListView(
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomField(
                    title: S.current.title,
                    controller: title,
                    inputType: TextInputType.text,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  CustomField(
                    //TIP: enforce ltr on numbers
                    textDirection: TextDirection.ltr,
                    title: S.current.gold,
                    controller: gold,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  CustomField(
                    //TIP: enforce ltr on numbers
                    textDirection: TextDirection.ltr,
                    title: S.current.sliver,
                    controller: sliver,
                  ),
                  SizedBox(
                    height: 35.h,
                  ),
                  CustomButton(
                    onPressed: () {
                      onPressed?.call();
                      FocusScope.of(context).unfocus();
                    },
                    title: buttonTitle,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
