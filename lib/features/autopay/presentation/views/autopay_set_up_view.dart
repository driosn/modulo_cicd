import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/set_up_autopay_payment.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/routes.dart';

class AutoPaySetUpView extends StatelessWidget {
  const AutoPaySetUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final autoPayBloc = locator<AutoPayBloc>();
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    final paymentAccountsBloc = locator<PaymentAccountsBloc>();
    return BlocBuilder<PaymentAccountsBloc, PaymentAccountsState>(
      bloc: paymentAccountsBloc,
      builder: (context, state) {
        return SetUpAutopayPayment(
          title: localizations.setupAutoPay,
          description: localizations.descriptionAutoPay,
          svgAssetPath: Illustrations.autopay(context),
          appBarTitle: localizations.autoPay,
          buttonTitle: localizations.continueT.toUpperCase(),
          colorFilter: ColorFilter.mode(
            colorPalette.tertiary300,
            BlendMode.srcIn,
          ),
          goRouteName: state.paymentAccounts.maskedBankAccountNumber != ""
              ? AutopayRoutes.autopayPaymentAccountCardView.name!
              : PaymentAccountRoutes.paymentAccountCreationAutopay.name!,
          autoPayBloc: autoPayBloc,
        );
      },
    );
  }
}
