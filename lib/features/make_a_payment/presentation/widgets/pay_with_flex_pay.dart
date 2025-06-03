import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class PayWithFlexPay extends StatelessWidget {
  const PayWithFlexPay({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final theme = Theme.of(context);
    return Text(
      localizations.payHalfFlex,
      style: theme.textTheme.hyperlink.copyWith(
        shadows: [
          Shadow(
            color: colorPalette.textLink,
            offset: const Offset(0, -4),
          )
        ],
        decorationColor: colorPalette.textLink,
      ),
    );
  }
}
