import 'package:get/get.dart';

import '../controllers/edit_price_controller.dart';

class EditPriceBinding extends Bindings {
  @override
  void dependencies() {
    //TIP: use [Get.arguments] to pass arguments between routes
    Get.lazyPut<EditPriceController>(
      () => EditPriceController(Get.arguments),
    );
  }
}
