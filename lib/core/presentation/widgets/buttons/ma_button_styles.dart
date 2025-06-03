import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_colorpalette_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_fonts.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

final _colorPalette = locator<ColorPalette>();

abstract class MAButtonStyles {
  static ButtonStyle get elevatedButtonDark {
    return baseElevatedButton;
  }

  static ButtonStyle get elevatedButtonPrimary {
    MAColorpaletteBloc colorpalette = locator<MAColorpaletteBloc>();
    return baseElevatedButton.copyWith(
      backgroundColor: WidgetStateProperty.resolveWith((state) {
        if (state.contains(WidgetState.pressed)) {
          return colorpalette.state.palette.buttonPrimaryOnTapBg;
        } else {
          return colorpalette.state.palette.buttonPrimaryBg;
        }
      }),
      foregroundColor: WidgetStateProperty.all(
        colorpalette.state.palette.buttonPrimaryLabel,
      ),
      elevation: WidgetStateProperty.all(0.0),
    );
  }

  static ButtonStyle get elevatedButtonSecondary {
    MAColorpaletteBloc colorpalette = locator<MAColorpaletteBloc>();
    return baseElevatedButton.copyWith(
      backgroundColor: WidgetStateProperty.resolveWith((state) {
        if (state.contains(WidgetState.pressed)) {
          return colorpalette.state.palette.buttonSecondaryOnTapBg;
        } else {
          return colorpalette.state.palette.buttonSecondaryBg;
        }
      }),
      foregroundColor: WidgetStateProperty.all(
        colorpalette.state.palette.buttonSecondaryLabel,
      ),
      shape: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.disabled)) {
          return baseElevatedButtonShape;
        } else {
          return baseElevatedButtonShape.copyWith(
            side: BorderSide(
              width: 2.0,
              color: colorpalette.state.palette.buttonSecondaryBorder,
            ),
          );
        }
      }),
      elevation: WidgetStateProperty.all(0.0),
    );
  }

  static ButtonStyle get elevatedButtonSocial {
    return baseElevatedButton.copyWith(
      backgroundColor: WidgetStateProperty.resolveWith((state) {
        return null;
      }),
      side: const WidgetStatePropertyAll(
        BorderSide(
          width: 2.0,
        ),
      ),
      elevation: WidgetStateProperty.all(0.0),
    );
  }

  static ButtonStyle get elevatedButtonSecondaryDisabled {
    MAColorpaletteBloc colorpalette = locator<MAColorpaletteBloc>();
    return elevatedButtonSecondary.copyWith(
      backgroundColor: WidgetStateProperty.all(
        colorpalette.state.palette.buttonSecondaryDisabledBg,
      ),
      foregroundColor: WidgetStateProperty.all(
        colorpalette.state.palette.buttonSecondaryDisabledLabel,
      ),
    );
  }

  static ButtonStyle get elevatedButtonDisabled {
    MAColorpaletteBloc colorpalette = locator<MAColorpaletteBloc>();
    return baseElevatedButton.copyWith(
      backgroundColor: WidgetStateProperty.all(
        colorpalette.state.palette.buttonPrimaryDisabledBg,
      ),
      foregroundColor: WidgetStateProperty.all(
        colorpalette.state.palette.buttonPrimaryLabel,
      ),
    );
  }

  static ButtonStyle get baseElevatedButton {
    return ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
        minimumSize: WidgetStateProperty.all<Size>(const Size(double.infinity, 48)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        )));
  }

  static OutlinedBorder get baseElevatedButtonShape {
    return RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0));
  }

  static ButtonStyle get mainTextButton {
    MAColorpaletteBloc colorpalette = locator<MAColorpaletteBloc>();
    return TextButton.styleFrom(
      textStyle: MAFonts.mainInlineButton,
      foregroundColor: colorpalette.state.palette.buttonPrimaryBg,
    );
  }

  static ButtonStyle get secondaryTextButton {
    MAColorpaletteBloc colorpalette = locator<MAColorpaletteBloc>();
    return TextButton.styleFrom(
      textStyle: MAFonts.secondaryInlineButton,
      foregroundColor: colorpalette.state.palette.buttonSecondaryBg,
    );
  }

  static ButtonStyle get textButtonDisabled {
    MAColorpaletteBloc colorpalette = locator<MAColorpaletteBloc>();
    return TextButton.styleFrom(
      textStyle: MAFonts.mainInlineButtonDisabled,
      foregroundColor: colorpalette.state.palette.buttonPrimaryDisabledBg,
    );
  }

  static ButtonStyle get hyperlinkTextButton {
    return TextButton.styleFrom(textStyle: MAFonts.hyperLink.copyWith(), foregroundColor: Colors.transparent, padding: const EdgeInsets.all(0));
  }

  static ButtonStyle get hyperlinkTextButtonBlue {
    return TextButton.styleFrom(textStyle: MAFonts.hyperLinkBlue.copyWith(), padding: const EdgeInsets.all(0));
  }

  static ButtonStyle get hyperlinkTextButtonDisabled {
    MAColorpaletteBloc colorpalette = locator<MAColorpaletteBloc>();
    return TextButton.styleFrom(
        textStyle: MAFonts.mainInlineButton,
        foregroundColor: colorpalette.state.palette.buttonSecondaryBg,
        padding: const EdgeInsets.all(0));
  }
}
