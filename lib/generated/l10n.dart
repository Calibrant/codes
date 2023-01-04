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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `My codes`
  String get app_title {
    return Intl.message(
      'My codes',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `My car`
  String get btn_my_car {
    return Intl.message(
      'My car',
      name: 'btn_my_car',
      desc: '',
      args: [],
    );
  }

  /// `My child`
  String get btn_my_child {
    return Intl.message(
      'My child',
      name: 'btn_my_child',
      desc: '',
      args: [],
    );
  }

  /// `My flat`
  String get btn_my_flat {
    return Intl.message(
      'My flat',
      name: 'btn_my_flat',
      desc: '',
      args: [],
    );
  }

  /// `My wallet`
  String get btn_my_wallet {
    return Intl.message(
      'My wallet',
      name: 'btn_my_wallet',
      desc: '',
      args: [],
    );
  }

  /// `My telephone`
  String get btn_my_telephone {
    return Intl.message(
      'My telephone',
      name: 'btn_my_telephone',
      desc: '',
      args: [],
    );
  }

  /// `All Codes`
  String get categ_all_codes {
    return Intl.message(
      'All Codes',
      name: 'categ_all_codes',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get categ_favorites {
    return Intl.message(
      'Favorites',
      name: 'categ_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Car`
  String get categ_car {
    return Intl.message(
      'Car',
      name: 'categ_car',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get categ_add {
    return Intl.message(
      'Add',
      name: 'categ_add',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru', countryCode: 'RU'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
