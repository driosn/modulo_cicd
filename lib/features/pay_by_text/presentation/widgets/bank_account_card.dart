import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/helpers/string_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_card.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_label.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/review_text_button.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';

class BankAccountCard extends StatelessWidget {
  BankAccountCard(
      {super.key, required this.payByTextBloc, required this.accountNumber});

  final _localizations = locator<MaLocalizations>().I;

  final PayByTextBloc payByTextBloc;

  final String accountNumber;

  @override
  Widget build(BuildContext context) {
    final colorPalette = locator<ColorPalette>();
    return ReviewCard(
      cardTitle: _localizations.paymentAccount,
      divider: true,
      icon: Icons.account_balance_outlined,
      iconColor: colorPalette.iconBaseTextIcon,
      children: [
        ReviewLabel(payByTextBloc.state.name.value),
        ReviewLabel(payByTextBloc.state.accountType.name),
        ReviewLabel(
          accountNumber.maskedAccountNumber(),
        ),
        ReviewTextButton(
          _localizations.changeTheAccount,
          onPressed: () {
            payByTextBloc.add(const PayByTextEvent.setAllFieldsAreValidate());
            context.goNamed(PayByTextRoutes.payByTextNewPaymentAccount.name!);
          },
        ),
      ],
    );
  }
}
