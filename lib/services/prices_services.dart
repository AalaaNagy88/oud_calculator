import 'dart:async';
import 'package:get/get.dart';
import 'package:oud_calculator/app/models/price_model.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/services/cache/_cache_service.dart';
import 'package:oud_calculator/services/cache/prices_repo.dart';

class PricesServices extends GetxService {
  static PricesServices get to => Get.find();

  PricesRepo get pricesRepo => CacheService.to.pricesRepo;
  final prices = <PriceModel>[].obs;
  PriceModel get defaultPriceModel => PriceModel(
        title: S.current.defaultt,
        goldPrice: 400,
        sliverPrice: 500,
      );

  StreamSubscription _sub;
  @override
  void onInit() {
    super.onInit();
    _sub = pricesRepo.valuesStream.listen((event) {
      if (event.length == 0) {
        prices.assign(defaultPriceModel);
      } else {
        prices.assignAll(event);
      }
    });
  }

  @override
  void onClose() {
    _sub.cancel();
    super.onClose();
  }

  Future<void> addToBox(PriceModel priceModel) async {
    await pricesRepo.dataBox.add(priceModel);
  }

  Future<void> updateBoxItem(PriceModel priceModel, int index) async {
    await pricesRepo.dataBox.putAt(index, priceModel);
  }

  Future<void> deleteBoxItem(int index) async {
    await pricesRepo.dataBox.deleteAt(index);
  }
}
