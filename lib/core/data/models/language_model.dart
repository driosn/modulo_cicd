import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

enum Language {
  @JsonValue('en_us')
  english(
    Locale('en', 'US'),
    'English',
    'I speak English',
    3,
    'en_us',
    'en-us',
  ),
  @JsonValue('es_us')
  spanish(
    Locale('es', 'US'),
    'Español',
    'Yo Hablo Español',
    4,
    'es',
    'es',
  );

  const Language(
    this.language,
    this.languageName,
    this.languageHint,
    this.languageType,
    this.languageCode, // Is the languageCode the same as the languageHeader? if so, I think we want en-US instead of en_us and we can use that in place of languageHeader.
    this.languageHeader,
  );

  final Locale language;
  final String languageName;
  final String languageHint;
  final int languageType;
  final String languageCode;
  final String languageHeader;

  static fromLocaleName(String localeName) {
    return Language.values.firstWhere(
        (Language element) => element.language.toString() == localeName,
        orElse: () => Language.english);
  }

  static fromString(String string) {
    return Language.values.firstWhere(
        (Language element) => element.toString() == string,
        orElse: () => Language.english);
  }
}
