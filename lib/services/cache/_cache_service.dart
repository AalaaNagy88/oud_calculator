import 'package:bdaya_repository_pattern/bdaya_repository_pattern.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/app/models/_exports.dart';
import 'package:oud_calculator/services/cache/prices_repo.dart';

class CacheService extends CacheServiceInterface with GetxServiceMixin {
  static CacheService get to => Get.find();

  PricesRepo _pricesRepo;
  PricesRepo get pricesRepo => _pricesRepo;

  @override
  Future<void> initRepos() async {
    await (_pricesRepo = PricesRepo()).init();
  }

  @override
  void registerTypeAdapters() {
    Hive.registerAdapter(PriceModelAdapter());
  }

  @override
  Future<void> dispose() async {
    await _pricesRepo.dispose();
    await super.dispose();
  }
}
