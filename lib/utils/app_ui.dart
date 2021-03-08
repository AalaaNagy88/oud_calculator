import 'package:flutter/material.dart';
//TIP: export flutter_screenutil here so you don't have to import it manually to use extensions
export 'package:flutter_screenutil/flutter_screenutil.dart';

class AppUi {
  static _AppAssets get assets => _AppAssets();
  static _AppColors get colors => _AppColors();
  static _AppTheme get theme => _AppTheme();
}

class _AppColors {
  final Color blue = Color(0xff3D73DC);
  final Color primary = Color(0xffE1E6EB);
  final Color accent = Color(0xffE9EDF1);
  final Color redApp = Color(0xffFF5C5C);
  final Color yellowApp = Color(0xffFFD14E);
  final Color greenApp = Color(0xff1DA361);
}

class _AppAssets {
  final String logo = "assets/flare/calculator.json";
}

class _AppTheme {
  final ThemeData oudCalculatorTheme = ThemeData(
    scaffoldBackgroundColor: AppUi.colors.blue,
    appBarTheme: AppBarTheme(
      elevation: 0,
      color: AppUi.colors.blue,
    ),
    textTheme: TextTheme(
      //TIP: set headline3 theme here, instead of at each headline
      headline3: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
