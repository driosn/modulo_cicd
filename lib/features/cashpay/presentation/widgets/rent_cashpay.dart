import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/make_a_payment/presentation/widgets/payment_due_info.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

class RentSectionCashPay extends StatelessWidget {
  RentSectionCashPay({
    super.key,
    required this.propertySettings,
    required this.residentBalance,
  });

  final PropertySettings propertySettings;
  final ResidentBalance residentBalance;

  final localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Text(
          localizations.rent.toUpperCase(),
          style: Theme.of(context).textTheme.titleSmall,
        ),
        MASpacing.s(),
        MADivider(
          height: 2,
          color: colorPalette.tertiaryBase,
        ),
        MASpacing.s(),
        _pendingPayments(),
      ],
    );
  }

  Widget _pendingPayments() {
    final localizations = locator<MaLocalizations>().I;

    return Column(
      children: [
        PaymentDueInfo(
          title: localizations.total.toUpperCase(),
          amount: residentBalance.totalBalance,
          dueDate: DateTime.now(),
        ),
      ],
    );
  }
}
