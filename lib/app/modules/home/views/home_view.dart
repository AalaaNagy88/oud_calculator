import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:oud_calculator/app/modules/home/components/app_drawer.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/utils/app_ui.dart';

import '../controllers/home_controller.dart';
import '../components/_exports.dart';

class HomeView extends GetView<HomeController> {
  //final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //key: _scaffoldKey,
      appBar: AppBar(
        title: Text(S.current.oud_calculator),
        //TIP: no need to use _scaffoldKey to open drawer, instead use a [Builder] widget
        //to get the context, and call [Scaffold.of(context).openDrawer();]
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.short_text_rounded),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      //resizeToAvoidBottomInset: true,
      drawer: OudCalculatorDrawer(),
      body: Container(
        child: Column(
          children: [
            //total price
            Container(
              height: 100.h,
              //TIP: scaffold already has a blue background from the theme, no need to set it again
              //color: AppUi.colors.blue,
              child: Center(
                child: Obx(
                  () {
                    var priceStr = controller.price.value.toStringAsFixed(2);
                    return Text(
                      //TIP: limit characters to only 2 decimal points
                      priceStr,
                      style: Theme.of(context).textTheme.headline3,
                    );
                  },
                ),
              ),
            ),
            //TIP: split this in a different widget (using extract widget)
            ClaculateBodyInput(),
          ],
        ),
      ),
    );
  }
}
