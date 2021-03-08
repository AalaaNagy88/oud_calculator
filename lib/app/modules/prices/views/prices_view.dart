import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oud_calculator/_shared/custom_button.dart';
import 'package:oud_calculator/app/modules/prices/components/price_card.dart';
import 'package:oud_calculator/app/routes/app_pages.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../controllers/prices_controller.dart';

class PricesView extends GetView<PricesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.oud_prices),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Obx(
            () => controller.prices.length == 0 ||
                    controller.prices[0].title == S.current.defaultt
                ? Center(
                    child: Text(
                      S.current.empty_message,
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.white),
                    ),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: controller.prices.length,
                      itemBuilder: (context, i) => PriceCard(
                        priceModel: controller.prices[i],
                        index: i,
                      ),
                    ),
                  ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0.h),
            child: CustomButton(
              title: "+    ${S.current.add}",
              onPressed: () {
                Get.toNamed(Routes.ADD_PRICES);
              },
            ),
          ),
        ],
      ),
    );
  }
}
