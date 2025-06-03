import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/helpers/double_helper.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';

class PaymentDescriptionHeader extends StatelessWidget {
  const PaymentDescriptionHeader({
    super.key,
    required this.payment,
  });

  final Payment payment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = locator<MaLocalizations>().I;
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                localizations.amount,
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Expanded(
              child: Text(
                localizations.paymentDate.toUpperCase(),
                style: theme.textTheme.labelSmall?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
        MASpacing.s(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Text(
                payment.paymentAmount.toFormattedCurrency(),
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
            Expanded(
              child: Text(
                payment.paymentDate.toFormattedDate().toPascalCase(),
                style: theme.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ],
    );
  }
}
