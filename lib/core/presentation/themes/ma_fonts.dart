import 'package:flutter/material.dart';

final class MAFontFamily {
  static String get lato => 'Lato';
  static String get raleway => 'Raleway';
  static String get pacifico => 'Pacifico';
}

class MAFonts {
  static TextStyle bodyMedium = TextStyle(
    fontSize: 17,
    fontFamily: MAFontFamily.lato,
  );
  static TextStyle mainInlineButton = TextStyle(
    decoration: TextDecoration.none,
    fontSize: 17,
    height: 18 / 12,
    fontWeight: FontWeight.bold,
    fontFamily: MAFontFamily.lato,
  );
  static TextStyle mainInlineButtonDisabled = TextStyle(
    fontSize: 17,
    height: 18 / 12,
    fontWeight: FontWeight.w400,
    fontFamily: MAFontFamily.lato,
  );
  static TextStyle secondaryInlineButton = TextStyle(
    decoration: TextDecoration.underline,
    fontSize: 14,
    height: 18 / 12,
    fontWeight: FontWeight.w400,
    fontFamily: MAFontFamily.lato,
  );
  static TextStyle hyperLink = TextStyle(
    fontSize: 14,
    height: 24 / 17,
    shadows: const [
      Shadow(
        offset: Offset(0, -5),
      ),
    ],
    color: Colors.transparent,
    decoration: TextDecoration.underline,
    decorationThickness: 1,
    decorationStyle: TextDecorationStyle.solid,
    fontFamily: MAFontFamily.lato,
  );
  static TextStyle hyperLinkBlue = TextStyle(
    fontSize: 14,
    height: 24 / 17,
    shadows: const [
      Shadow(
        offset: Offset(0, -5),
      ),
    ],
    color: Colors.transparent,
    decoration: TextDecoration.underline,
    decorationThickness: 1,
    decorationStyle: TextDecorationStyle.solid,
    fontFamily: MAFontFamily.lato,
  );
}
