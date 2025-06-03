import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/routes.dart';
import 'package:resident_app/features/payment_account/routes.dart';

class LeadingButton extends StatelessWidget {
  LeadingButton({
    super.key,
    required this.autoPayBloc,
    required this.isPaymentAccount,
  });

  final bool isPaymentAccount;
  final AutoPayBloc autoPayBloc;
  final AppLocalizations localizations = locator<MaLocalizations>().I;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorPalette = locator<ColorPalette>();
    return GestureDetector(
      onTap: () {
        context.showMADialog(
          maDialogBody: MABasicDialogBody(
            title: localizations.confirm,
            text: localizations.doYouWantToCancelChangePaymentAccount,
          ),
          actions: [
            MADialogAction(
              label: localizations.yesCancel,
              onPressed: () {
                autoPayBloc
                    .add(const AutoPayEvent.setCurrentPaymentAccountSettings());
                autoPayBloc.add(const AutoPayEvent.setAllFieldsAreValidate());
                isPaymentAccount
                    ? context.goNamed(
                        PaymentAccountRoutes.paymentAccountSettings.name!)
                    : context.goNamed(AutopayRoutes.autopayLandingView.name!);
              },
              style: MADialogActionStyle.elevated,
            ),
            MADialogAction(
              label: localizations.goBack,
              onPressed: () => context.pop(),
              style: MADialogActionStyle.text,
            )
          ],
        );
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            localizations.cancelButton,
            style: textTheme.labelLarge!.copyWith(
              color: colorPalette.appBarTextIcon,
            ),
          ),
        ),
      ),
    );
  }
}
