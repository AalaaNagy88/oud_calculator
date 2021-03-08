import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/app/controller_mixins/price_controller_mixin.dart';
import 'package:oud_calculator/app/models/price_model.dart';
import 'package:oud_calculator/services/prices_services.dart';
import 'package:oud_calculator/utils/app_util.dart';

class AddPricesController extends GetxController with PriceControllerMixin {
  void addNewPrice() {
    PricesServices.to.addToBox(
      PriceModel(
        title: titleText,
        goldPrice: goldPrice,
        sliverPrice: silverPrice,
      ),
    );

    Get.back();
    //TIP: since Home is already in the navigation stack, use [Get.back()]
    //Get.offAllNamed(Routes.HOME);
  }
}
