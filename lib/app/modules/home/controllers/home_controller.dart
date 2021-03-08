import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/app/models/price_model.dart';
import 'package:oud_calculator/services/prices_services.dart';
import 'package:oud_calculator/utils/app_util.dart';

class HomeController extends GetxController {
  //TIP: all reactive controllers should be final
  final width = TextEditingController();
  final number = TextEditingController();
  final isSliverSelected = false.obs;
  final selected = Rx<PriceModel>();
  final price = 0.0.obs;
  //TIP: don't create a new variable to store the same reference of [PricesServices.to.prices]
  //instead use a getter
  RxList<PriceModel> get prices => PricesServices.to.prices;

  @override
  void onReady() {
    super.onReady();
    //TIP: changes to rx variables must be in onReady (after the first frame is rendered)
    selected.value = prices[0];
  }

  @override
  void onClose() {
    super.onClose();
    //TIP: dispose all controllers (other than Rx controllers) here
    width.dispose();
    number.dispose();
  }

  //TIP: set return types on methods :)
  void calculatePrice() {
    var totalOudNumber = 120 / width.text.convertToDouble();
    double oudPrice;
    if (isSliverSelected.value) {
      oudPrice = selected.value.sliverPrice / totalOudNumber;
    } else {
      oudPrice = selected.value.goldPrice / totalOudNumber;
    }
    price.value = (number.text.convertToDouble() * oudPrice);
    //TIP: Unnecessary assignment
    //price.value = num.parse(price.value.toStringAsFixed(4));
  }
}
