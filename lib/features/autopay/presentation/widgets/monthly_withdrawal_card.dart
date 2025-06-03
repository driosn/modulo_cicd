import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/formz_inputs/dollar_input.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/presentation/enums/withdrawal_amount_option.dart';
import 'package:resident_app/features/autopay/presentation/models/payment_date_view_params.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_card.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_label.dart';
import 'package:resident_app/features/autopay/presentation/widgets/review_text_button.dart';
import 'package:resident_app/features/autopay/routes.dart';

class MonthlyWithdrawalCard extends StatelessWidget {
  MonthlyWithdrawalCard(
      {super.key,
      required this.withdrawalAmountOption,
      required this.withdrawalAmount});

  final _localizations = locator<MaLocalizations>().I;

  final WithdrawalAmountOption withdrawalAmountOption;

  final DollarInput withdrawalAmount;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    final paymentDateViewParams = PaymentDateViewParams();
    return ReviewCard(
      cardTitle: _localizations.withdrawalAmountLabel,
      divider: true,
      icon: Icons.currency_exchange_rounded,
      iconColor: colorPalette.iconBaseTextIcon,
      children: [
        //Withdrawal option
        if (withdrawalAmountOption == WithdrawalAmountOption.fullAmount)
          ReviewLabel(_localizations.withdrawalFullAmountDueReview)
        else if (withdrawalAmountOption ==
            WithdrawalAmountOption.fullAmountWithNoExceed)
          ReviewLabel(
              "${_localizations.withdrawalFullAmountReview} ${withdrawalAmount.value}")
        else
          ReviewLabel(
              "${_localizations.withdrawalFixedAmountReview} ${withdrawalAmount.value}"),

        //Amount
        if (withdrawalAmountOption == WithdrawalAmountOption.fullAmount)
          Column(
            children: [
              ReviewLabel(
                _localizations.theAmountMayVary,
                italicStyle: true,
              ),
            ],
          ),

        //Action to change
        ReviewTextButton(
          _localizations.changeTheAmount,
          onPressed: () {
            paymentDateViewParams.update(
              isAutoPayLandingView: false,
              isReviewView: true,
            );
            context.goNamed(AutopayRoutes.autopayWidthdrawalAmount.name!);
          },
        ),
      ],
    );
  }
}
