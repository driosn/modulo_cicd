import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/routes.dart';

class AutopayCancelDialog {
  const AutopayCancelDialog();

  showDialog(BuildContext context) {
    AppLocalizations localizations = locator<MaLocalizations>().I;
    AutoPayBloc autoPayBloc = locator<AutoPayBloc>();
    context.showMADialog(
      maDialogBody: MABasicDialogBody(
        title: localizations.cancelAutoPaySetup,
        text: localizations.cancellingTheSetupWillDelete,
      ),
      actions: [
        MADialogAction(
          label: localizations.cancelSetup,
          onPressed: () {
            autoPayBloc.add(const AutoPayEvent.setAllFieldsAreValidate());
            autoPayBloc.add(const AutoPayEvent.resetPaymentAccountSettings());
            context.goNamed(AutopayRoutes.autopayLandingView.name!);
          },
          style: MADialogActionStyle.elevated,
        ),
        MADialogAction(
          label: localizations.close,
          onPressed: () => context.pop(),
          style: MADialogActionStyle.text,
        )
      ],
    );
  }
}
