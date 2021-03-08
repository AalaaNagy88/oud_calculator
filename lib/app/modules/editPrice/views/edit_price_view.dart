import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oud_calculator/_shared/edit_item_screen.dart';
import 'package:oud_calculator/app/models/price_model.dart';
import 'package:oud_calculator/generated/l10n.dart';

import '../controllers/edit_price_controller.dart';

class EditPriceView extends GetView<EditPriceController> {
  @override
  Widget build(BuildContext context) {
    return EditItemScreen(
      gold: controller.gold,
      title: controller.title,
      sliver: controller.silver,
      appBarTitle: S.current.edit + " " + controller.priceModel.title,
      buttonTitle: S.current.edit,
      onPressed: controller.editPice,
    );
  }
}
