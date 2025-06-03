import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date_view_params.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_card.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_label.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_text_button.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/enums/payment_account.dart';
import 'package:resident_app/features/payment_account/routes.dart';

class BankAccountCard extends StatelessWidget {
  BankAccountCard(
      {super.key, required this.autoPayBloc, required this.accountNumber});

  final _localizations = locator<MaLocalizations>().I;

  final AutoPayBloc autoPayBloc;

  final String accountNumber;

  final PaymentAccountsBloc paymentAccountsBloc =
      locator<PaymentAccountsBloc>();

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final paymentDateViewParams = PaymentDateViewParams();
    return ReviewCard(
      cardTitle: _localizations.bankAccount,
      divider: true,
      icon: Icons.account_balance_outlined,
      iconColor: colorPalette.iconBaseTextIcon,
      children: [
        //TODO: Handled dinamically in the future
        //TODO: Change to real data when API is ready
        //Check accoun name when avalaiabl
        ReviewLabel(
          paymentAccountsBloc.state.paymentAccounts.bankAccountOption
                      .bankAccountType ==
                  BankAccountType.checking
              ? _localizations.checkingAccount
              : _localizations.savingsAccount,
        ),
        ReviewLabel(
          paymentAccountsBloc.state.paymentAccounts.maskedBankAccountNumber
              .maskedAccountNumber(),
        ),
        ReviewTextButton(
          _localizations.changeTheAccount,
          onPressed: () {
            autoPayBloc.add(const AutoPayEvent.resetPaymentAccountSettings());
            autoPayBloc.add(const AutoPayEvent.setAllFieldsAreValidate());
            paymentDateViewParams.update(
              isAutoPayLandingView: false,
              isReviewView: true,
            );
            context.goNamed(
              PaymentAccountRoutes.paymentAccountUpdate.name!,
            );
          },
        ),
      ],
    );
  }
}
