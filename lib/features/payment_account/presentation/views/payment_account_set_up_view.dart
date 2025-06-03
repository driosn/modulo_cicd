import 'package:flutter/material.dart';
import 'package:resident_app/core/constants/illustrations.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/set_up_payment_account.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/payment_account/routes.dart';

class PaymentAccountSetUpView extends StatelessWidget {
  const PaymentAccountSetUpView({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = locator<MaLocalizations>().I;
    final colorPalette = locator<ColorPalette>();
    return SetUpPaymentAccount(
      title: localizations.setUpPaymentAccount,
      description: localizations.addNewPaymentAccountSavesYou,
      svgAssetPath: Illustrations.newPaymentAccount(context), 
      appBarTitle: localizations.paymentAccount,
      buttonTitle: localizations.addAPaymentAccount.toUpperCase(),
      colorFilter: ColorFilter.mode(
        colorPalette.tertiary700,
        BlendMode.srcIn,
      ),
      goRouteName: PaymentAccountRoutes.paymentAccountCreation.name!,
    );
  }
}
