import 'package:get/get.dart';

import 'package:oud_calculator/app/modules/addPrices/bindings/add_prices_binding.dart';
import 'package:oud_calculator/app/modules/addPrices/views/add_prices_view.dart';
import 'package:oud_calculator/app/modules/editPrice/bindings/edit_price_binding.dart';
import 'package:oud_calculator/app/modules/editPrice/views/edit_price_view.dart';
import 'package:oud_calculator/app/modules/home/bindings/home_binding.dart';
import 'package:oud_calculator/app/modules/home/views/home_view.dart';
import 'package:oud_calculator/app/modules/prices/bindings/prices_binding.dart';
import 'package:oud_calculator/app/modules/prices/views/prices_view.dart';
import 'package:oud_calculator/app/modules/splash/bindings/splash_binding.dart';
import 'package:oud_calculator/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PRICE,
      page: () => EditPriceView(),
      binding: EditPriceBinding(),
    ),
    GetPage(
      name: _Paths.PRICES,
      page: () => PricesView(),
      binding: PricesBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRICES,
      page: () => AddPricesView(),
      binding: AddPricesBinding(),
    ),
  ];
}
