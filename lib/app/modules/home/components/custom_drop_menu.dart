import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/app/modules/home/controllers/home_controller.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/utils/app_ui.dart';

class CutomDropMenu extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().screenWidth * .8,
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      decoration: BoxDecoration(
          color: AppUi.colors.accent, borderRadius: BorderRadius.circular(20)),
      child: Obx(
        () => controller.prices == null || controller.prices.isEmpty
            ? Center(
                child: CircularProgressIndicator(),
              )
            : DropdownButton(
                value: controller.prices.contains(controller.selected.value)
                    ? controller.selected.value
                    : controller.prices[0],
                underline: Container(),
                icon: Icon(Icons.keyboard_arrow_down),
                isExpanded: true,
                hint: Text(S.current.material),
                items: controller.prices
                    .map((e) => DropdownMenuItem(
                          child: Text(e.title),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  controller.selected.value = value;
                },
              ),
      ),
    );
  }
}
