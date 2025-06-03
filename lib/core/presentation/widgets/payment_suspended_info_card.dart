import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class PaymentSuspendedInfoCard extends StatelessWidget {
  const PaymentSuspendedInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
        vertical: scalerConfig.spacingL,
      ),
      decoration: BoxDecoration(
        color: colorPalette.goldAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.error_outline,
            color: colorPalette.goldAccent,
          ),
          SizedBox(
            width: 8,
          ),
          Flexible(
            child: Text(
              localizations.paymentsSuspendedDescription,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
