import 'package:flutter/material.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/autopay.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class TopWithdrawalAmount extends StatelessWidget {
  const TopWithdrawalAmount({super.key});

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final theme = Theme.of(context);
    final localizations = locator<MaLocalizations>().I;
    final userBloc = locator<UserBloc>();
    final autopayBloc = locator<AutoPayBloc>();
    final isFullBalanceOnly = userBloc.state.user.primarySite.propertySettings.autoPayFullBalanceOnly;
    final isLoan = autopayBloc.state.isLoan;
    return Container(
      color: colorPalette.surfaceContainerLowest,
      child: RelationalPadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MASpacing.xxl(),
            Text(
              localizations.withdrawalAmountLabel.toPascalCase(),              
              style: theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            MASpacing.xxl(),
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
            const RelationalSpace(),
            Text(
              autopayBloc.state.paymentType ?? localizations.rent,
              style: theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const RelationalSpace(),
            (isFullBalanceOnly || isLoan)
                ? Text(
                    localizations.bankAccountDebited,
                    style: theme.textTheme.bodyMedium,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
