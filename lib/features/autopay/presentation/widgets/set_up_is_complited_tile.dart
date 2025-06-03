import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_info_card.dart';
import 'package:resident_app/features/user/user_feature.dart';

class SetUpIsCompletedTile extends StatelessWidget {
  SetUpIsCompletedTile({super.key});

  //
  // Localizations
  //
  final AppLocalizations localizations = locator<MaLocalizations>().I;

  final _userBloc = locator<UserBloc>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            localizations.changePaymentAccount,
            textAlign: TextAlign.left,
            style: textTheme.titleLarge,
          ),
        ),
        const RelationalSpace(),
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: colorPalette.primary300,
              ),
            ),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 12,
          ),
          child: SiteInfoCard(
            site: _userBloc.state.user.primarySite,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          localizations.enterYourNewAutoPaymentAccount,
          textAlign: TextAlign.start,
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
