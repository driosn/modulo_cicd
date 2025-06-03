import 'package:flutter/material.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/pay_by_text/presentation/widgets/set_up_pay_by_text_payment.dart';
import 'package:resident_app/features/pay_by_text/routes.dart';

class PayByTextSetUpView extends StatelessWidget {
  const PayByTextSetUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final payByTextBloc = locator<PayByTextBloc>();
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    //TODO: Ticket RMST-905: Pay by Text | Landing Screen States -> Retrieve the user payment account from API to replace hasPaymentAccount value as it was implementes in Autopay
    bool hasPaymentAccount = true;
    return SetUpPayByTextPayment(
      title: localizations.payByText,
      description: localizations.descriptionPayByText,
      svgAssetPath: Illustrations.whiteLabelPayByText,
      appBarTitle: localizations.payByText,
      buttonTitle: localizations.setupPayByText.toUpperCase(),
      colorFilter: ColorFilter.mode(
        colorPalette.tertiary300,
        BlendMode.srcIn,
      ),
      //TODO: Ticket RMST-905: Pay by Text | Landing Screen States -> Retrieve the user payment account from API to replace hasPaymentAccount value as it was implementes in Autopay
      goRouteName: hasPaymentAccount
          ? PayByTextRoutes.payByTextPaymentAccountCardView.name!
          : PayByTextRoutes.payByTextNewPaymentAccount.name!,
      payByTextBloc: payByTextBloc,
    );
  }
}
