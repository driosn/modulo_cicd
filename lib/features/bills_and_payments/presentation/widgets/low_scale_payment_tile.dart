import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/badges/multi_char_badge.dart';
import 'package:resident_app/core/shared/helpers/double_helper.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';

class LowScalePaymentTile extends StatelessWidget {
  LowScalePaymentTile({
    required this.payment,
    super.key,
  });

  final Payment payment;
  final _localizations = locator<MaLocalizations>().I;
  final _colorPalette = locator<ColorPalette>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                payment.paymentAmount.toFormattedCurrency(),
                style: textTheme.bodyMedium,
              ),
              SizedBox(
                height: 6,
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
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                payment.paymentDate.toFormattedDate(),
                style: textTheme.bodyMedium,
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                payment.payToTypeDescription,
                style: textTheme.labelMedium?.copyWith(
                  color: _colorPalette.textMuted,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Icon(
          Icons.keyboard_arrow_right_outlined,
          color: _colorPalette.textMuted,
          size: 32,
        )
      ],
    );
  }
}
