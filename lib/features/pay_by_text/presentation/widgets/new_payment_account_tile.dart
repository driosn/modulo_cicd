import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class NewPaymentAccountTile extends StatelessWidget {
  NewPaymentAccountTile({super.key});

  //
  // Localizations
  //
  final AppLocalizations localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            localizations.newPaymentAccount,
            textAlign: TextAlign.left,
            style: textTheme.titleLarge,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const RelationalSpace(),
        Text(
          localizations.addCheckingSavingsAccount,
          textAlign: TextAlign.start,
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
