import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_elevated_button.dart';
import 'package:resident_app/core/presentation/widgets/relational_padding.dart';
import 'package:resident_app/core/presentation/widgets/vertical_rhythm.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/presentation/widgets/payment_account_info_card.dart';

class PaymentAccountDrawer extends StatelessWidget {
  PaymentAccountDrawer({
    super.key,
    this.onClosedDrawer,
  });

  final VoidCallback? onClosedDrawer;
  final colorPalette = locator<ColorPalette>();
  final paymentAccountsBloc = locator<PaymentAccountsBloc>();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final localizations = locator<MaLocalizations>().I;

    return Scaffold(
      backgroundColor: colorPalette.surfaceContainerLowest,
      appBar: AppBar(
        centerTitle: false,
        leadingWidth: 0,
        backgroundColor: colorPalette.surfaceContainerLowest,
        iconTheme: IconThemeData(
          color: colorPalette.appBarTextIcon,
        ),
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Text(
            localizations.sitePaymentAccount,
            style: textTheme.titleSmall,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: IconButton(
              onPressed: () {
                context.pop();
                if (onClosedDrawer != null) {
                  onClosedDrawer!();
                }
              },
              icon: Icon(
                Icons.close,
                size: 24,
                color: colorPalette.textBase,
              ),
            ),
          )
        ],
      ),
      body: VerticalRhythm(
        topChildren: [
          const SizedBox(
            height: 30,
          ),
          RelationalPadding(
            child: Column(
              children: [
                PaymentAccountInfoCard(
                  iconPath: 'assets/bank-account.svg',
                  hasBorder: false,
                  bankAccountType: paymentAccountsBloc
                      .state.paymentAccounts.bankAccountOption.bankAccountType,
                  numberBankAccount: paymentAccountsBloc
                      .state.paymentAccounts.maskedBankAccountNumber,
                ),
              ],
            ),
          ),
          //TODO: Remove the following comments when the API is ready to retrieve the used for AutoPay
          // const SizedBox(
          //   height: 14,
          // ),
          // Container(
          //   padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 54),
          //   width: double.infinity,
          //   color: colorPalette.surfaceBright,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         "Used for",
          //         style: textTheme.titleSmall!
          //             .copyWith(fontWeight: FontWeight.w700),
          //       ),
          //       const SizedBox(
          //         height: 8,
          //       ),
          //       Text(
          //         "Rent AutoPay",
          //         style: textTheme.bodyMedium,
          //       ),
          //       Text(
          //         "Home Loan AutoPay",
          //         style: textTheme.bodyMedium,
          //       ),
          //       Text(
          //         "Pay By Text",
          //         style: textTheme.bodyMedium,
          //       ),
          //       Text(
          //         "Make a Payment",
          //         style: textTheme.bodyMedium,
          //       ),
          //     ],
          //   ),
          // ),
          // const SizedBox(
          //   height: 16,
          // ),
        ],
        bottomChildren: [
          RelationalPadding(
            child: Column(
              children: [
                const SizedBox(
                  height: 28,
                ),
                MAElevatedButton.secondary(
                  text: localizations.updateAccount.toUpperCase(),
                  onPressed: () {
                    context.goNamed(
                      AutopayRoutes.paymentAccountUpdateAutopay.name!,
                      extra: true,
                    );
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ],
        middleColor: colorPalette.surfaceContainerLowest,
        middleHeight: 40,
      ),
    );
  }
}
