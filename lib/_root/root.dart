import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/screenutil_init.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:oud_calculator/app/routes/app_pages.dart';
import 'package:oud_calculator/generated/l10n.dart';
import 'package:oud_calculator/main_binding.dart';
import 'package:oud_calculator/utils/app_ui.dart';
import 'package:oud_calculator/utils/app_util.dart';
import 'package:intl/intl.dart' as intl;

class OudCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => GetMaterialApp(
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        locale: Locale(intl.Intl.getCurrentLocale()),
        debugShowCheckedModeBanner: false,
        supportedLocales: S.delegate.supportedLocales,
        title: "حاسبة الأعواد",
        builder: (context, child) => Directionality(
          textDirection: AppUtil.textDirection,
          child: child,
        ),
        initialRoute: AppPages.INITIAL,
        theme: AppUi.theme.oudCalculatorTheme,
        initialBinding: MainBinding(),
        getPages: AppPages.routes,
      ),
    );
  }
}
