import 'package:get/get.dart';
import 'package:oud_calculator/app/models/price_model.dart';
import 'package:oud_calculator/services/prices_services.dart';

class PricesController extends GetxController {
  RxList<PriceModel> get prices => PricesServices.to.prices;
}
