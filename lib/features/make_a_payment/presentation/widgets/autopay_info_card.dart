import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/ma_scaler.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/user/domain/entities/user.dart';

class AutoPayInfoCard extends StatelessWidget {
  const AutoPayInfoCard({
    super.key,
    required this.autoPaySettings,
    required this.residentBalance,
  });

  final AutoPaySettings autoPaySettings;
  final ResidentBalance residentBalance;

  @override
  Widget build(BuildContext context) {
    if (autoPaySettings.isActive) {
      return _AutoPayCard(residentBalance);
    }

    return const _EnrollInAutoPay();
  }
}

class _EnrollInAutoPay extends StatelessWidget {
  const _EnrollInAutoPay();

  @override
  Widget build(BuildContext context) {
    final scalerConfig = locator<ScalerConfig>();
    final colorPalette = locator<ColorPalette>();
    final localizations = locator<MaLocalizations>().I;
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () {
        context.pushNamed(AutopayRoutes.autopaySetUp.name!);
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: scalerConfig.spacingL,
          top: scalerConfig.spacingM,
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
            MASpacing.m(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/auto_pay.svg',
                  colorFilter: ColorFilter.mode(
                    colorPalette.textLink,
                    BlendMode.srcIn,
                  ),
                  height: 24,
                ),
                MASpacing.xs(
                  axis: Axis.horizontal,
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
  const _AutoPayCard(this.residentBalance);

  final ResidentBalance residentBalance;

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final scalerConfig = locator<ScalerConfig>();

    final theme = Theme.of(context);
    Language selectedLanguage = context.read<UserPreferencesBloc>().state.selectedLanguage;
    final DateFormat dateFormat = selectedLanguage == Language.english ? DateFormat.yMMMd('en_US') : DateFormat.yMMMd('es_US');

    final now = DateTime.now();
    final rentDueDate = DateTime.parse(residentBalance.rentDueDate);
    final rentDate = now.isBefore(rentDueDate)
        ? dateFormat
            .format(DateTime(
              rentDueDate.year,
              rentDueDate.month,
              residentBalance.autoPaySettings.autoPayDay ?? rentDueDate.day,
            ))
            .toPascalCase()
        : dateFormat
            .format(DateTime(
              now.year,
              now.month + 1,
              residentBalance.autoPaySettings.autoPayDay ?? rentDueDate.day,
            ))
            .toPascalCase();

    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: scalerConfig.spacingL,
        top: scalerConfig.spacingM,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: colorPalette.pumpkinAccent,
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
                child: SvgPicture.asset(
                  'assets/icons/auto_pay.svg',
                  colorFilter: ColorFilter.mode(
                    colorPalette.tertiary700,
                    BlendMode.srcIn,
                  ),
                  height: 24,
                ),
              ),
              MASpacing.xl(
                axis: Axis.horizontal,
              ),
              Flexible(
                child: Text(
                  "${localizations.autopayOnDate} $rentDate",
                  style: theme.textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          MASpacing.m(),
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
