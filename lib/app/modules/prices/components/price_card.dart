import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/app/models/price_model.dart';
import 'package:oud_calculator/app/modules/editPrice/views/edit_price_view.dart';
import 'package:oud_calculator/app/modules/prices/components/delet_confrim_dialog.dart';
import 'package:oud_calculator/app/modules/prices/components/price_row_data.dart';
import 'package:oud_calculator/app/routes/app_pages.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/utils/app_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PriceCard extends StatelessWidget {
  final PriceModel priceModel;
  final int index;

  const PriceCard({
    Key key,
    this.priceModel,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actions: <Widget>[
        IconSlideAction(
          caption: S.current.delete,
          color: AppUi.colors.redApp,
          icon: Icons.delete_rounded,
          onTap: () {
            //TIP: correct way to show dialogs with GetX
            Get.dialog(
              DeleteConfirmDialog(
                index: index,
                title: priceModel.title,
              ),
            );
          },
        ),
        IconSlideAction(
          caption: S.current.edit,
          color: AppUi.colors.greenApp,
          icon: Icons.edit,
          //TIP: correct way to pass route arguments
          onTap: () => Get.toNamed(Routes.EDIT_PRICE, arguments: priceModel),
        ),
      ],
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Container(
          child: Card(
            elevation: 3,
            shadowColor: AppUi.colors.yellowApp,
            color: AppUi.colors.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.h)),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    priceModel.title,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  PriceRowData(
                    title: S.current.gold,
                    value: priceModel.goldPrice,
                  ),
                  PriceRowData(
                    title: S.current.sliver,
                    value: priceModel.sliverPrice,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
