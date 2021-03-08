// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Width`
  String get width {
    return Intl.message(
      'Width',
      name: 'width',
      desc: '',
      args: [],
    );
  }

  /// `Material`
  String get material {
    return Intl.message(
      'Material',
      name: 'material',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Sliver`
  String get sliver {
    return Intl.message(
      'Sliver',
      name: 'sliver',
      desc: '',
      args: [],
    );
  }

  /// `Gold`
  String get gold {
    return Intl.message(
      'Gold',
      name: 'gold',
      desc: '',
      args: [],
    );
  }

  /// `Number`
  String get number {
    return Intl.message(
      'Number',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Calulate Price`
  String get calc_price {
    return Intl.message(
      'Calulate Price',
      name: 'calc_price',
      desc: '',
      args: [],
    );
  }

  /// `Oud Prices`
  String get oud_prices {
    return Intl.message(
      'Oud Prices',
      name: 'oud_prices',
      desc: '',
      args: [],
    );
  }

  /// `Oud Calculator`
  String get oud_calculator {
    return Intl.message(
      'Oud Calculator',
      name: 'oud_calculator',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Add New Oud Price`
  String get add_new_oud_price {
    return Intl.message(
      'Add New Oud Price',
      name: 'add_new_oud_price',
      desc: '',
      args: [],
    );
  }

  /// `Add New`
  String get add {
    return Intl.message(
      'Add New',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get defaultt {
    return Intl.message(
      'Default',
      name: 'defaultt',
      desc: '',
      args: [],
    );
  }

  /// `There is no special prices\n Click add `
  String get empty_message {
    return Intl.message(
      'There is no special prices\n Click add ',
      name: 'empty_message',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delte {title}`
  String delet_message(Object title) {
    return Intl.message(
      'Are you sure you want to delte $title',
      name: 'delet_message',
      desc: '',
      args: [title],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}