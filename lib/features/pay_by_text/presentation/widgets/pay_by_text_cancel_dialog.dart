import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';

class PayByTextCancelDialog {
  const PayByTextCancelDialog();

  showDialog(BuildContext context) {
    AppLocalizations localizations = locator<MaLocalizations>().I;
    PayByTextBloc payByTextBloc = locator<PayByTextBloc>();
    context.showMADialog(
      maDialogBody: MABasicDialogBody(
        title: localizations.cancelPayByTextSetup,
        text: localizations.cancellingTheSetupWillDelete,
      ),
      actions: [
        MADialogAction(
          label: localizations.cancelSetup,
          onPressed: () {
            payByTextBloc.add(const PayByTextEvent.setAllFieldsAreValidate());
            payByTextBloc
                .add(const PayByTextEvent.resetPaymentAccountSettings());
            context.goNamed(CoreRoutes.home.name!);
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
