import 'package:get/get.dart';
import 'package:oud_calculator/app/controller_mixins/price_controller_mixin.dart';
import 'package:oud_calculator/app/models/price_model.dart';

class EditPriceController extends GetxController with PriceControllerMixin {
  //TIP: route parameters should be in the controller and passed via binding
  final PriceModel priceModel;

  EditPriceController(this.priceModel);

  @override
  void onReady() {
    gold.text = priceModel.goldPrice.toStringAsFixed(1);
    silver.text = priceModel.sliverPrice.toStringAsFixed(1);
    title.text = priceModel.title.toString();
    super.onReady();
  }

  void editPice() async {
    //TIP: call save to update an existing model
    priceModel.goldPrice = goldPrice;
    priceModel.sliverPrice = silverPrice;
    priceModel.title = titleText;
    await priceModel.save();

    Get.back();
    //TIP: since Home is already in the navigation stack, use [Get.back()]
    //Get.offAllNamed(Routes.HOME);
  }
}
