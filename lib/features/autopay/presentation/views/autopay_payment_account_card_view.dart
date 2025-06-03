import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/ma_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/ma_bottom_app_bar.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/widgets/autopay_cancel_dialog.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/user_payment_account_tile.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/presentation/widgets/payment_account_info_card.dart';
import 'package:resident_app/features/register_site/presentation/widgets/ma_bottom_safe_spacing.dart';

class AutopayPaymentAccountCardView extends StatefulWidget {
  const AutopayPaymentAccountCardView({
    super.key,
  });
  //TODO: add payment autopay configured type

  @override
  State<StatefulWidget> createState() => _AutopayPaymentAccountCardViewState();
}

class _AutopayPaymentAccountCardViewState extends State<AutopayPaymentAccountCardView> {
  late AppLocalizations localizations;

  late PaymentAccountsBloc _paymentAccountsBloc;

  @override
  void initState() {
    _paymentAccountsBloc = locator<PaymentAccountsBloc>();
    localizations = locator<MaLocalizations>().I;
    super.initState();
  }

  final colorPalette = locator<ColorPalette>();
  final autopayBloc = locator<AutoPayBloc>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        context.goNamed(AutopayRoutes.autopaySetUp.name!);
      },
      child: Scaffold(
        backgroundColor: colorPalette.surfaceContainerLowest,
        appBar: MAAppBar(
          iconTheme: IconThemeData(
            color: colorPalette.appBarTextIcon,
          ),
          maAppBarType: MAAppBarType.blue,
          bottom: const MABottomAppBar(),
          title: Text(
            localizations.setupAutoPay,
            style: textTheme.titleSmall!.copyWith(
              color: colorPalette.appBarTextIcon,
            ),
          ),
        ),
        body: VerticalRhythm(
          topChildren: [
            RelationalPadding(
              child: Column(
                children: [
                  UserPaymentAccountTile(
                    billName: autopayBloc.state.paymentType,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  PaymentAccountInfoCard(
                    bankAccountType: _paymentAccountsBloc.state.paymentAccounts.bankAccountOption.bankAccountType,
                    numberBankAccount: _paymentAccountsBloc.state.paymentAccounts.maskedBankAccountNumber,
                    editIcon: true,
                  ),
                ],
              ),
            )
          ],
          bottomChildren: [
            const SizedBox(
              height: 16,
            ),
            RelationalPadding(
              child: Column(
                children: [
                  const RelationalSpace(),
                  MAElevatedButton.secondary(
                      text: localizations.cancelSetup,
                      onPressed: () {
                        const AutopayCancelDialog().showDialog(context);
                      }),
                  const SizedBox(
                    height: 16,
                  ),
                  MAElevatedButton.primary(
                    text: localizations.nextButton.toUpperCase(),
                    onPressed: () {
                      context.goNamed(
                        AutopayRoutes.autopayWidthdrawalAmount.name!,
                      );
                    },
                  ),
                  MASpacing.bottomPadding(),
                  MABottomSafeSpacing(
                    context: context,
                  )
                ],
              ),
            )
          ],
          middleColor: colorPalette.surfaceContainerLowest,
          middleHeight: 80,
        ),
      ),
    );
  }
}
