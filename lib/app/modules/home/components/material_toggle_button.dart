import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/state_manager.dart';

//TIP: don't mix stateful widgets and Rx controllers
class DetectMaterialType extends StatelessWidget {
  final RxBool isSilver;

  DetectMaterialType({Key key, this.isSilver}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      //TIP: use ObxValue if you want to listen to only 1 controller
      child: ObxValue<RxBool>(
        (controller) => ToggleButtons(
          splashColor: Colors.pink[200],
          children: [
            Icon(
              Icons.power_input_sharp,
              size: 50.h,
              color: Colors.amber,
            ),
            Icon(
              Icons.power_input_sharp,
              size: 50.h,
              color: Colors.grey[400],
            ),
          ],
          isSelected: [
            controller.value,
            !controller.value,
          ],
          onPressed: (int i) {
            controller.value = i == 0;
          },
        ),
        isSilver,
      ),
    );
  }
}
