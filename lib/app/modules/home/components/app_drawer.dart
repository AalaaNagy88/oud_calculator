import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oud_calculator/app/modules/home/controllers/home_controller.dart';
import 'package:oud_calculator/app/routes/app_pages.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/utils/app_util.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OudCalculatorDrawer extends StatelessWidget {
  final List<String> _langs = ["en", "ar"];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          ListTile(
            title: Text(
              S.current.add_new_oud_price,
              style: Theme.of(context).textTheme.headline5,
            ),
            trailing: Icon(
              Icons.edit_rounded,
              color: Colors.green,
            ),
            onTap: () {
              //TIP: close the drawer before navigating
              //the drawer is considered a new route, so close it using [Navigator.pop(context);]
              Navigator.pop(context);
              Get.toNamed(Routes.PRICES);
            },
          ),
          SizedBox(
            height: 50.h,
          ),
          Divider(),
          SizedBox(
            height: 50.h,
          ),
          ListTile(
            title: Text(
              S.current.language,
              style: Theme.of(context).textTheme.headline5,
            ),
            trailing: ToggleSwitch(
              activeFgColor: Colors.white,
              inactiveBgColor: Colors.grey,
              inactiveFgColor: Colors.white,
              initialLabelIndex: _langs.indexOf(AppUtil.currentLocal),
              labels: _langs,
              activeBgColors: [
                Colors.blue,
                Colors.pink,
              ],
              onToggle: (i) async {
                if (AppUtil.currentLocal == _langs[i]) return;
                final locale = Locale(_langs[i]);
                await S.load(locale);
                //TIP: use this instead of rebuilding the app manually
                Get.updateLocale(locale);
                //AppBuilder.of(context).rebuild();
              },
            ),
          ),
        ],
      ),
    );
  }
}
