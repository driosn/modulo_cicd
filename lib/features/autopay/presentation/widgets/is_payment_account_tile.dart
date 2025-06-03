import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class IsPaymentAccountTile extends StatelessWidget {
  IsPaymentAccountTile({super.key});

  //
  // Localizations
  //
  final AppLocalizations localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        localizations.editPaymentAccount.capitalize(),
        style: textTheme.titleLarge,
      ),
    );
  }
}
