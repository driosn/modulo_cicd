import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class MaterialProcessPaymentStatus extends StatelessWidget {
  MaterialProcessPaymentStatus({super.key});

  final _localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return Material(
      color: colorPalette.secondary100.withOpacity(0.75),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
              vertical: 28,
            ),
            color: colorPalette.surfaceContainerLowest,
            child: Text(_localizations.gettingYourPaymentReady),
          ),
          const SizedBox(
            height: 30,
          ),
          CircularProgressIndicator(
            color: colorPalette.primaryBase,
          ),
        ],
      ),
    );
  }
}
