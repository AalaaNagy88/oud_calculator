import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/services/prices_services.dart';

class DeleteConfirmDialog extends StatelessWidget {
  final String title;
  final int index;

  const DeleteConfirmDialog({Key key, this.title, this.index})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Text(S.current.delet_message(title)),
      actions: [
        TextButton(
          onPressed: () {
            PricesServices.to.deleteBoxItem(index);
            Get.back();
          },
          child: Text(S.current.delete),
        ),
        TextButton(
          onPressed: () {
            Get.back();
          },
          child: Text(S.current.cancel),
        ),
      ],
    );
  }
}
