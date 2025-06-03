import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_multi_formatter/formatters/masked_input_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/buttons/ma_text_button.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_checkbox.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_selector_input_field.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/shared/extensions/primary_site_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/billing_settings/application/bloc/bill_delivery_bloc.dart';
import 'package:resident_app/features/billing_settings/constants/billing_settings.dart';
import 'package:resident_app/features/billing_settings/presentation/enums/bill_delivery_option.dart';
import 'package:resident_app/features/billing_settings/presentation/widgets/billing_settings_option_content_card.dart';
import 'package:resident_app/features/contact_information/routes.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/user/user_feature.dart';

part 'email_message_billing_settings_option_content_card.dart';
part 'mail_billing_settings_option_content_card.dart';
part 'text_message_billing_settings_option_content_card.dart';

class BillDeliveryReminderTabView extends StatefulWidget {
  const BillDeliveryReminderTabView({
    super.key,
    required this.onBillDeliveryOptionSelected,
  });

  final Function(BillDeliveryOption) onBillDeliveryOptionSelected;

  @override
  State<BillDeliveryReminderTabView> createState() =>
      _BillDeliveryReminderTabViewState();
}

class _BillDeliveryReminderTabViewState
    extends State<BillDeliveryReminderTabView> {
  final ValueNotifier<BillDeliveryOption> selectedDeliveryOptionNotifier =
      ValueNotifier<BillDeliveryOption>(BillDeliveryOption.mail);

  final _localizations = locator<MaLocalizations>().I;

  //
  // Blocs
  //
  late final BillDeliveryBloc _billDeliveryBloc;
  late final SiteBloc _siteBloc;

  late PrimarySite _primarySite;
  late PropertySettings _propertySettings;
  late BillingSettings _billingSettings;
  late String _phoneNumber;
  late final ColorPalette _colorPalette;

  @override
  void initState() {
    _billDeliveryBloc = locator<BillDeliveryBloc>();
    _siteBloc = locator<SiteBloc>();

    _colorPalette = locator<ColorPalette>();

    _populateFieldsFromSite(_siteBloc.state.selectedSite);

    super.initState();
  }

  void _populateFieldsFromSite(PrimarySite site) {
    _primarySite = _siteBloc.state.selectedSite;
    _propertySettings = _primarySite.propertySettings;
    _billingSettings = _primarySite.billingSettings;

    _phoneNumber = _siteBloc.state.selectedSite.billingSettings.phoneNumber;

    selectedDeliveryOptionNotifier.value =
        _getDeliveryOption(_billingSettings.deliveryType);
  }

  BillDeliveryOption _getDeliveryOption(int optionNumericValue) {
    if (optionNumericValue == DeliveryTypeValues.mail) {
      return BillDeliveryOption.mail;
    }

    if (optionNumericValue == DeliveryTypeValues.email) {
      return BillDeliveryOption.email;
    }

    if (optionNumericValue == DeliveryTypeValues.phone) {
      return BillDeliveryOption.phone;
    }

    return BillDeliveryOption.mail;
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: ValueListenableBuilder(
        valueListenable: selectedDeliveryOptionNotifier,
        builder: (context, billDeliveryOption, child) {
          return BlocConsumer<SiteBloc, SiteState>(
            bloc: _siteBloc,
            listenWhen: (previousState, state) {
              return previousState.selectedSite != state.selectedSite;
            },
            buildWhen: (previousState, state) {
              return previousState.selectedSite != state.selectedSite;
            },
            listener: (context, siteState) {
              _populateFieldsFromSite(siteState.selectedSite);
            },
            builder: (context, siteState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  MASpacing.l(),
                  Text(
                    _localizations.sendBillsBy,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  MASpacing.s(),

                  //
                  // Email Card
                  //
                  _EmailBillingSettingsOptionContentCard(
                    localizations: _localizations,
                    selectedDeliveryOptionNotifier:
                        selectedDeliveryOptionNotifier,
                    widget: widget,
                    siteBloc: _siteBloc,
                    billDeliveryBloc: _billDeliveryBloc,
                    billDeliveryOption: billDeliveryOption,
                  ),

                  MASpacing.s(),

                  //
                  // Mail Card
                  //

                  _MailBillingSettingsOptionContentCard(
                    localizations: _localizations,
                    selectedDeliveryOptionNotifier:
                        selectedDeliveryOptionNotifier,
                    widget: widget,
                    billDeliveryBloc: _billDeliveryBloc,
                    primarySite: siteState.selectedSite,
                    siteBloc: _siteBloc,
                    context: context,
                    colorPalette: _colorPalette,
                    billDeliveryOption: billDeliveryOption,
                    textTheme: textTheme,
                  ),

                  MASpacing.s(),

                  //
                  // Text message Card
                  //
                  if (_propertySettings.textBillsEnabled)
                    _TextMessageBillingSettingsOptionContentCard(
                      localizations: _localizations,
                      selectedDeliveryOptionNotifier:
                          selectedDeliveryOptionNotifier,
                      widget: widget,
                      billDeliveryBloc: _billDeliveryBloc,
                      phoneNumber: _phoneNumber,
                      siteBloc: _siteBloc,
                      billDeliveryOption: billDeliveryOption,
                      textTheme: textTheme,
                    ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
