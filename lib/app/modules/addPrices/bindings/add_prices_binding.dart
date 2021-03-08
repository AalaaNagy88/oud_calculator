import 'package:get/get.dart';

import '../controllers/add_prices_controller.dart';

class AddPricesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPricesController>(
      () => AddPricesController(),
    );
  }
}
