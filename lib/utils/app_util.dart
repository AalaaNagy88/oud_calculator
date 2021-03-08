import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

extension textToNumConversion on String {
  double convertToDouble({double defautlValue = 1}) {
    //TIP: use [tryParse] better than [parse], and handle when [tryParse] returns null
    return double.tryParse(this) ?? defautlValue;
  }
}

class AppUtil {
  static const List<String> _rtlLanguages = <String>[
    'ar', // Arabic
    'fa', // Farsi
    'he', // Hebrew
    'ps', // Pashto
    'ur', // Urdu
  ];
  static TextDirection get textDirection => _rtlLanguages.contains(currentLocal)
      ? TextDirection.rtl
      : TextDirection.ltr;

  static String get currentLocal => intl.Intl.getCurrentLocale().toLowerCase();
  //TIP: use extensions instead
  // static double converTodouble(String value) {
  //   return value == null || value.isEmpty ? 1 : double.parse(value);
  // }
}
