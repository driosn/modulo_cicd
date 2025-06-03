import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class AnyTile extends StatelessWidget {
  AnyTile({super.key});

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
            style: textTheme.titleLarge
                ?.copyWith(backgroundColor: Colors.red.withOpacity(0.15)),
          ),
        ),
        MASpacing.xl(),
        Text(
          localizations.addCheckingSavingsAccount,
          textAlign: TextAlign.start,
          style: textTheme.bodyMedium
              ?.copyWith(backgroundColor: Colors.red.withOpacity(0.15)),
        ),
      ],
    );
  }
}
