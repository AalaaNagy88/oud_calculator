import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/utils/app_util.dart';

//TIP: use mixins for REPEATED logic (e.g. repeated variables and methods)
//use services for SHARED logic (for long-lived components like LanguageService/CacheService/etc...)
mixin PriceControllerMixin on GetxController {
  //TIP: all reactive controllers should be final
  final title = TextEditingController();
  final gold = TextEditingController();
  final silver = TextEditingController();

  String get titleText => title.text;
  double get goldPrice => gold.text.convertToDouble();
  double get silverPrice => silver.text.convertToDouble();
}
