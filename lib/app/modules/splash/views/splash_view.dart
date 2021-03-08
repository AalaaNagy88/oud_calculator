import 'package:bdaya_custom_splash/bdaya_custom_splash.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oud_calculator/app/routes/app_pages.dart';
import 'package:oud_calculator/utils/app_ui.dart';

import '../controllers/splash_controller.dart';
import 'package:lottie/lottie.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return BdayaCustomSplash(
      backgroundColor: Colors.white,
      backgroundBuilder: (child) {
        return child;
      },
      initFunction: controller.initFunction,
      onNavigateTo: (routeName) {
        Get.offAllNamed(routeName);
      },
      logoBuilder: () => Center(
        child: Lottie.asset(AppUi.assets.logo),
      ),
    );
  }
}
