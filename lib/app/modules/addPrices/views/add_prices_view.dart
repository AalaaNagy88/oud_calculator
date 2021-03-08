import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oud_calculator/_shared/edit_item_screen.dart';
import 'package:oud_calculator/generated/l10n.dart';

import '../controllers/add_prices_controller.dart';

class AddPricesView extends GetView<AddPricesController> {
  @override
  Widget build(BuildContext context) {
    return EditItemScreen(
      gold: controller.gold,
      title: controller.title,
      sliver: controller.silver,
      appBarTitle: S.current.add_new_oud_price,
      buttonTitle: S.current.add,
      onPressed: controller.addNewPrice,
    );
  }
}
