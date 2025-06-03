import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class UserPaymentAccountTile extends StatelessWidget {
  UserPaymentAccountTile({super.key, required this.billName});

  //
  // Localizations
  //
  final AppLocalizations localizations = locator<MaLocalizations>().I;
  final String? billName;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        MASpacing.xxl(),
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            localizations.paymentAccount,
            textAlign: TextAlign.left,
            style: textTheme.titleLarge,
          ),
        ),
        MASpacing.xl(),
        MASpacing.s(),
        Text(
          localizations.paymentAccountWillBeDebitted(billName ?? localizations.rent),
          textAlign: TextAlign.start,
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
