import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';

class AutoPayCard extends StatelessWidget {
  const AutoPayCard({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final theme = Theme.of(context);
    Language selectedLanguage =
        context.read<UserPreferencesBloc>().state.selectedLanguage;
    //TODO Refactor this logic by registering this dateformat into the locator
    final DateFormat dateFormat = selectedLanguage == Language.english
        ? DateFormat.yMMMd('en_US')
        : DateFormat.yMMMd('es_US');
    return Container(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
        top: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colorPalette.tertiary200,
        border: Border.all(
          color: colorPalette.tertiary200,
          width: 2,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture(
                height: 24,
                SvgAssetLoader(
                  Illustrations.autopay(context),
                  colorMapper: SvgColorMapper(
                    fromColor: colorPlaceHolder,
                    toColor: colorPalette.buttonPrimaryBg,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Flexible(
                child: Text(
                  "${localizations.autopayOnDate} ${dateFormat.format(DateTime.now())}",
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            localizations.yourBalanceAutomatically,
            style: theme.textTheme.bodySmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
