import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/payment_due_info.dart';

class PendingPayments extends StatelessWidget {
  const PendingPayments({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    return Column(
      children: [
        PaymentDueInfo(
          title: localizations.siteBalance.toUpperCase(),
          amount: 1500.0,
          dueDate: DateTime.now(),
        ),
        Divider(
          color: colorPalette.surfaceContainer,
          height: 24,
          thickness: 1,
        ),
        PaymentDueInfo(
          title: localizations.totalBalance.toUpperCase(),
          amount: 3000.0,
          dueDate: DateTime.now(),
        ),
      ],
    );
  }
}
