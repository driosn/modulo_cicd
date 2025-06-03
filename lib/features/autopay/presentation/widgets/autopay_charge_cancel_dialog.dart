import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_basic_dialog_body.dart';
import 'package:resident_app/core/presentation/widgets/dialogs/ma_dialog.dart';
import 'package:resident_app/core/shared/extensions/ma_dialog_extension.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/data/models/autopay_option_types.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/application/bloc/user_bloc.dart';

class AutopayChargeCancelDialog {
  const AutopayChargeCancelDialog({
    required this.referenceId,
    required this.autopayDescription,
    required this.autopayOptionType,
    required this.autopayId,
  });
  final String autopayId;
  final String referenceId;
  final String autopayDescription;
  final AutoPayOptionTypes autopayOptionType;

  showDialog(BuildContext context) {
    AppLocalizations localizations = locator<MaLocalizations>().I;
    AutoPaySettingsBloc autopaySettingsBloc = locator<AutoPaySettingsBloc>();
    AutoPayBloc autoPayBloc = locator<AutoPayBloc>();
    SiteBloc siteBloc = locator<SiteBloc>();
    UserBloc userBloc = locator<UserBloc>();

    context.showMADialog(
      maDialogBody: MABasicDialogBody(
        title: "${localizations.cancelAutoPayFor} $autopayDescription",
        text: localizations.stoppingAutoPayOccurs,
      ),
      actions: [
        MADialogAction(
          label: localizations.cancelAutoPay,
          onPressed: () {
            autopaySettingsBloc.add(
              AutoPaySettingsEvent.reset(
                residentId: siteBloc.state.selectedSite.resident.residentId,
                referenceId: referenceId,
                paymentDay: autoPayBloc.state.paymentDate.value,
                autopayOptionType: autopayOptionType,
                autopayId: autopayId,
                residentUserId: userBloc.state.user.residentUserId,
              ),
            );
            context.pop();
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
