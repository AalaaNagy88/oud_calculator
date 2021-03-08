import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/_shared/_exports.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/utils/app_ui.dart';
import '../controllers/home_controller.dart';

import 'custom_drop_menu.dart';
import 'material_toggle_button.dart';

class ClaculateBodyInput extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //TIP: width is automatically set to fill screen
        //width: ScreenUtil().screenWidth,
        decoration: BoxDecoration(
          color: AppUi.colors.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.w),
            topRight: Radius.circular(50.w),
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: ListView(
              children: [
                SizedBox(
                  height: 50.h,
                ),
                DetectMaterialType(
                  isSilver: controller.isSliverSelected,
                ),
                SizedBox(
                  height: 35.h,
                ),
                CutomDropMenu(),
                SizedBox(
                  height: 35.h,
                ),
                CustomField(
                  title: S.current.width,
                  controller: controller.width,
                  //TIP: enforce ltr for numbers
                  inputType: TextInputType.number,
                  textDirection: TextDirection.ltr,
                ),
                SizedBox(
                  height: 35.h,
                ),
                CustomField(
                  title: S.current.number,
                  controller: controller.number,
                  //TIP: enforce ltr for numbers
                  inputType: TextInputType.number,
                  textDirection: TextDirection.ltr,
                ),
                SizedBox(
                  height: 35.h,
                ),
                CustomButton(
                  onPressed: () {
                    controller.calculatePrice();
                    FocusScope.of(context).unfocus();
                  },
                  title: S.current.calc_price,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
