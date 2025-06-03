import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/badges/multi_char_badge.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/helpers/double_helper.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';

class HighScalePaymentTile extends StatelessWidget {
  HighScalePaymentTile({
    required this.payment,
    super.key,
  });

  final Payment payment;
  final _localizations = locator<MaLocalizations>().I;
  final _colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                payment.paymentAmount.toFormattedCurrency(),
                style: textTheme.bodyMedium,
              ),
              Text(
                payment.paymentDate.toFormattedDate(),
                style: textTheme.labelSmall?.copyWith(
                  color: colorPalette.textMuted,
                ),
              ),
              MASpacing.l(),
              Text(
                payment.payToTypeDescription,
                style: textTheme.bodyMedium,
              ),
              if (payment.isInProgress)
                MultiCharBadge(
                  label: _localizations.inProgress,
                  color: _colorPalette.badgeMultiChar,
                  textColor: _colorPalette.badgeMultiCharLabel,
                ),
            ],
          ),
        ),
        const Icon(
          Icons.keyboard_arrow_right_outlined,
          size: 32,
        )
      ],
    );
  }
}
