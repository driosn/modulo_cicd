import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/autopay.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class SetUpIsCompleted extends StatelessWidget {
  const SetUpIsCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final userBloc = locator<UserBloc>();
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            localizations.changePaymentDate,
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
          child: SiteInfoCard(site: userBloc.state.user.primarySite),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          localizations.enterYourNewAutoPaymentDate,
          textAlign: TextAlign.start,
          style: textTheme.bodyMedium,
        ),
      ],
    );
  }
}
