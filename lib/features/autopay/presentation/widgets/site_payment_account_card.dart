import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class SitePaymentAccountCard extends StatelessWidget {
  const SitePaymentAccountCard({
    super.key,
    required this.paymentAccountsNumber,
  });

  final String paymentAccountsNumber;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final textTheme = Theme.of(context).textTheme;
    final localizations = locator<MaLocalizations>().I;
    final scalerConfig = locator<ScalerConfig>();

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: scalerConfig.spacingM,
      ),
      decoration: BoxDecoration(
        color: colorPalette.primary100,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Row(
        children: [
          MAScaler(
            child: Icon(
              Icons.account_balance_outlined,
              color: colorPalette.buttonSecondaryLabel,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Text(
              "${localizations.sitePaymentAccount.toUpperCase()} *${paymentAccountsNumber.substring(paymentAccountsNumber.length - 3)}",
              style: textTheme.labelMedium?.copyWith(
                color: colorPalette.buttonSecondaryLabel,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: MAScaler(
              child: Icon(
                Icons.keyboard_arrow_right_outlined,
                size: 32,
                color: colorPalette.buttonSecondaryLabel,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
