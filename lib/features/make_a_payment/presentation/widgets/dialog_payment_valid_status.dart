import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/ma_divider.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/shared/helpers/number_formatter_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/widgets/site_info_card.dart';
import 'package:resident_app/features/make_a_payment/domain/entities/payment_option.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';

class DialogPaymentValid extends StatelessWidget {
  const DialogPaymentValid({
    super.key,
    required this.paymentOption,
    required this.amount,
  });

  final PaymentOption paymentOption;
  final double amount;

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    final siteBloc = locator<SiteBloc>();

    return BlocBuilder<SiteBloc, SiteState>(
      bloc: siteBloc,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SiteInfoCard(
              site: state.selectedSite,
            ),
            const SizedBox(height: 8),
            MADivider(
              height: 1,
              color: colorPalette.primary300,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  paymentOption.payToType.when(
                    rent: () => localizations.rent,
                    loan: () => 'Loan',
                  ),
                  style: theme.textTheme.bodyMedium,
                ),
                Text(
                  '\$${locator<NumberFormatterHelper>().currencyFormat.format(
                        amount,
                      )}',
                  style: theme.textTheme.bodyMedium,
                )
              ],
            ),
            const RelationalSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  localizations.total,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  '\$${locator<NumberFormatterHelper>().currencyFormat.format(
                        amount,
                      )}',
                  style: theme.textTheme.titleSmall,
                )
              ],
            )
          ],
        );
      },
    );
  }
}
