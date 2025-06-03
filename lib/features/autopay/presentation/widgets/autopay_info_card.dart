import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/shared/helpers/svg_color_mapped.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

class AutoPayInfoCard extends StatelessWidget {
  const AutoPayInfoCard({
    super.key,
    required this.autoPaySettings,
  });

  final AutoPaySettings autoPaySettings;

  @override
  Widget build(BuildContext context) {
    if (autoPaySettings.isActive) {
      return const _AutoPayCard();
    }

    return const _EnrollInAutoPay();
  }
}

class _EnrollInAutoPay extends StatelessWidget {
  const _EnrollInAutoPay();

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        context.pushNamed(AutopayRoutes.autopaySetUp.name!);
      },
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 16,
          top: 12,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: colorPalette.surfaceContainerLow,
            width: 2,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              localizations.automaticallyPayInfo,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodySmall!.copyWith(
                color: colorPalette.textBase,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
                  width: 4,
                ),
                Flexible(
                  child: Text(
                    localizations.enrollInAutoPay,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.hyperlink.copyWith(
                      shadows: [
                        Shadow(
                          color: colorPalette.textLink,
                          offset: const Offset(0, -4),
                        )
                      ],
                      decorationColor: colorPalette.textLink,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _AutoPayCard extends StatelessWidget {
  const _AutoPayCard();

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final theme = Theme.of(context);
    Language selectedLanguage = context.read<UserPreferencesBloc>().state.selectedLanguage;
    //TODO Refactor this logic by registering this dateformat into the locator
    final DateFormat dateFormat = selectedLanguage == Language.english ? DateFormat.yMMMd('en_US') : DateFormat.yMMMd('es_US');
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
              MAScaler(
                child: SvgPicture(
                  SvgAssetLoader(
                    Illustrations.autopay(context),
                    colorMapper: SvgColorMapper(
                      fromColor: colorPlaceHolder,
                      toColor: colorPalette.buttonPrimaryBg,
                    ),
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
