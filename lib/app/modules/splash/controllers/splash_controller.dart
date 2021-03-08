import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:oud_calculator/app/routes/app_pages.dart';
import 'package:oud_calculator/services/cache/_cache_service.dart';
import 'package:oud_calculator/services/prices_services.dart';

class SplashController extends GetxController {
  Future<Object> initFunction() async {
    //TIP: use repository pattern
    await Hive.initFlutter("v0.2");
    await Get.put(CacheService()).init();

    Get.put(PricesServices());
    return Routes.HOME;
  }
}
