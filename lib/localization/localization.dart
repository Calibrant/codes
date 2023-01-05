import 'package:flutter/cupertino.dart';

class Localization extends Locale {
  Localization(super.languageCode);

  static List<Locale> get supportedLocales => const [
        Locale.fromSubtags(
          languageCode: 'ru',
          countryCode: 'RU',
        ),
        Locale.fromSubtags(
          languageCode: 'en',
        )
      ];
}
