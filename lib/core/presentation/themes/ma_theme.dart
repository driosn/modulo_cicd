import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/ma_fonts.dart';

ThemeData getTheme({
  Color textBase = const Color(0xff002c61),
}) {
  return ThemeData.light().copyWith(
    // Typography
    textTheme: ThemeData.light().textTheme.copyWith(
          displaySmall: TextStyle(
            fontSize: 32,
            height: 32 / 32,
            fontWeight: FontWeight.w700,
            fontFamily: MAFontFamily.lato,
            color: textBase,
          ),
          titleLarge: TextStyle(
            fontSize: 24,
            height: 32 / 24,
            fontFamily: MAFontFamily.lato,
            fontWeight: FontWeight.w600,
            color: textBase,
          ),
          titleMedium: TextStyle(
            fontSize: 20,
            height: 28 / 20,
            fontWeight: FontWeight.w600,
            fontFamily: MAFontFamily.lato,
            color: textBase,
          ),
          titleSmall: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            height: 24 / 17,
            fontFamily: MAFontFamily.lato,
            color: textBase,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            height: 24 / 17,
            fontWeight: FontWeight.w400,
            fontFamily: MAFontFamily.lato,
            color: textBase,
          ),
          bodySmall: TextStyle(
            fontSize: 14,
            height: 20 / 14,
            fontFamily: MAFontFamily.lato,
            color: textBase,
          ),
          labelLarge: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            height: 20 / 17,
            fontFamily: MAFontFamily.raleway,
            color: textBase,
          ),
          labelMedium: TextStyle(
            fontSize: 14,
            height: 18 / 14,
            fontWeight: FontWeight.w400,
            fontFamily: MAFontFamily.lato,
            color: textBase,
          ),
          labelSmall: TextStyle(
            fontSize: 12,
            height: 18 / 12,
            fontFamily: MAFontFamily.lato,
            color: textBase,
          ),
          //used for text buttons
          headlineSmall: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 17,
            height: 18 / 12,
            fontWeight: FontWeight.w400,
            fontFamily: MAFontFamily.lato,
            color: textBase,
          ),
        ),
    textSelectionTheme: const TextSelectionThemeData(),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        fontSize: 17,
        height: 24 / 17,
        fontWeight: FontWeight.w400,
        fontFamily: MAFontFamily.lato,
      ),
      contentPadding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 0,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          width: 2,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          width: 2,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          width: 3,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: const BorderSide(
          width: 3,
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w700,
        height: 24 / 17,
        fontFamily: MAFontFamily.lato,
      ),
      centerTitle: true,
      actionsIconTheme: const IconThemeData(),
    ),
  );
}

extension CustomStyles on TextTheme {
  TextStyle get hyperlink => TextStyle(
        fontSize: 16,
        height: 48 / 17,
        shadows: const [
          Shadow(
            offset: Offset(0, -5),
          )
        ],
        color: Colors.transparent,
        decoration: TextDecoration.underline,
        decorationThickness: 1,
        decorationStyle: TextDecorationStyle.solid,
        fontFamily: MAFontFamily.lato,
      );
}
