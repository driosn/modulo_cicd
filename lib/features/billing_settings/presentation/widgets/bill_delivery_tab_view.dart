import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/ma_theme.dart';
import 'package:resident_app/core/presentation/widgets/inputs/ma_textformfield.dart';
import 'package:resident_app/core/presentation/widgets/relational_space.dart';
import 'package:resident_app/core/presentation/widgets/spacing/ma_spacing.dart';
import 'package:resident_app/core/presentation/widgets/tiles/ma_radio_list_tile.dart';
import 'package:resident_app/core/shared/extensions/primary_site_extensions.dart';
import 'package:resident_app/core/shared/extensions/string_extensions.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/billing_settings/application/bloc/bill_delivery_bloc.dart';
import 'package:resident_app/features/billing_settings/presentation/enums/bill_delivery_option.dart';
import 'package:resident_app/features/contact_information/routes.dart';
import 'package:resident_app/features/user/user_feature.dart';

class BillDeliveryTabView extends StatefulWidget {
  const BillDeliveryTabView({
    super.key,
    required this.onBillDeliveryOptionSelected,
  });

  final Function(BillDeliveryOption) onBillDeliveryOptionSelected;

  @override
  State<BillDeliveryTabView> createState() => _BillDeliveryTabViewState();
}

class _BillDeliveryTabViewState extends State<BillDeliveryTabView>
    with AutomaticKeepAliveClientMixin {
  final ValueNotifier<BillDeliveryOption> selectedDeliveryOptionNotifier =
      ValueNotifier<BillDeliveryOption>(BillDeliveryOption.mail);

  final _localizations = locator<MaLocalizations>().I;

  //
  // Blocs
  //
  late UserBloc _userBloc;
  late BillDeliveryBloc _billDeliveryBloc;

  late PrimarySite _primarySite;
  late PropertySettings _propertySettings;
  late BillingSettings _billingSettings;
  late String _phoneNumber;

  @override
  void initState() {
    _userBloc = locator<UserBloc>();
    _billDeliveryBloc = locator<BillDeliveryBloc>();

    _primarySite = _userBloc.state.user.primarySite;
    _propertySettings = _primarySite.propertySettings;
    _billingSettings = _primarySite.billingSettings;

    _phoneNumber = _primarySite.resident.cellPhone;

    selectedDeliveryOptionNotifier.value =
        _getDeliveryOption(_billingSettings.deliveryType);

    super.initState();
  }

  BillDeliveryOption _getDeliveryOption(int optionNumericValue) {
    if (optionNumericValue == 1) {
      return BillDeliveryOption.mail;
    }

    if (optionNumericValue == 2) {
      return BillDeliveryOption.email;
    }

    if (optionNumericValue == 3) {
      return BillDeliveryOption.phone;
    }

    return BillDeliveryOption.mail;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      child: ValueListenableBuilder(
        valueListenable: selectedDeliveryOptionNotifier,
        builder: (context, billDeliveryOption, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              MASpacing.l(),
              Text(
                _localizations.sendBillsToYour,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              MASpacing.s(),
              _deliveryRadioOption(
                value: BillDeliveryOption.mail,
                groupValue: billDeliveryOption,
                onChanged: (value) {
                  selectedDeliveryOptionNotifier.value = value!;
                  widget.onBillDeliveryOptionSelected(value);
                },
                title: _localizations.mailingAddressField,
                content: Text(
                  '${_primarySite.fullName}${_primarySite.mailBillingAddress}',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                linkText: _localizations.billDeliveryUpdateContactInformation,
                onTapLink: () {
                  context.pushNamed(
                    UserInformationRoutes.contactInformation.name!,
                  );
                },
              ),
              _deliveryRadioOption(
                value: BillDeliveryOption.email,
                groupValue: billDeliveryOption,
                onChanged: (value) {
                  selectedDeliveryOptionNotifier.value = value!;
                  widget.onBillDeliveryOptionSelected(value);
                },
                content: BlocBuilder<BillDeliveryBloc, BillDeliveryState>(
                  bloc: _billDeliveryBloc,
                  builder: (context, state) {
                    return MATextFormField.email(
                      label:
                          '${_localizations.emailField} ${_localizations.addressField.toLowerCase()}',
                      controller: _primarySite.resident.residentEmail.isNotEmpty
                          ? TextEditingController.fromValue(
                              TextEditingValue(
                                text: _primarySite.resident.residentEmail,
                              ),
                            )
                          : null,
                      onChanged: (value) => _billDeliveryBloc.add(
                        BillDeliveryEvent.setEmailAddress(value),
                      ),
                      onFocusExited: () => _billDeliveryBloc.add(
                        const BillDeliveryEvent.validateEmailAddress(),
                      ),
                      errorText: state.emailErrorMessage,
                      hasError: state.emailErrorMessage != null,
                    );
                  },
                ),
              ),
              if (_propertySettings.textBillsEnabled)
                _deliveryRadioOption(
                  value: BillDeliveryOption.phone,
                  groupValue: billDeliveryOption,
                  onChanged: (value) {
                    selectedDeliveryOptionNotifier.value = value!;
                    widget.onBillDeliveryOptionSelected(value);
                  },
                  content: BlocBuilder<BillDeliveryBloc, BillDeliveryState>(
                    bloc: _billDeliveryBloc,
                    builder: (context, state) {
                      return MATextFormField.phoneNumber(
                        label: _localizations.phoneNumberField,
                        controller: _primarySite.resident.cellPhone.isNotEmpty
                            ? TextEditingController.fromValue(
                                TextEditingValue(
                                    text: _phoneNumber.phoneFormatter()),
                              )
                            : null,
                        onChanged: (value) => _billDeliveryBloc.add(
                          BillDeliveryEvent.setPhoneNumber(value),
                        ),
                        onFocusExited: () => _billDeliveryBloc.add(
                          const BillDeliveryEvent.validatePhoneNumber(),
                        ),
                        errorText: state.phoneErrorMessage,
                        hasError: state.phoneErrorMessage != null,
                        inputFormatters: [
                          MaskedInputFormatter('(000) 000-0000'),
                          LengthLimitingTextInputFormatter(14),
                        ],
                      );
                    },
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _deliveryRadioOption<T>({
    required T value,
    required T groupValue,
    required Function(T?) onChanged,
    String? title,
    required Widget content,
    String? linkText,
    VoidCallback? onTapLink,
  }) {
    final theme = Theme.of(context);
    final colorPalette = locator<ColorPalette>();
    return MARadioListTile<T>(
      crossAxisAlignment: CrossAxisAlignment.start,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 3,
          ),
          if (title != null)
            Text(
              title,
              style: theme.textTheme.bodyMedium,
            ),
          if (title != null) const RelationalSpace(),
          content,
          if (_propertySettings.contactSync)
            if (linkText != null)
              TextButton(
                onPressed: onTapLink,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: Colors.transparent,
                ),
                child: Text(
                  linkText,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.hyperlink.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    height: 48 / 17,
                    shadows: [
                      Shadow(
                        color: colorPalette.textLink,
                        offset: const Offset(0, -4),
                      )
                    ],
                    decorationColor: colorPalette.textLink,
                  ),
                ),
              ),
        ],
      ),
      value: value,
      groupValue: groupValue,
      onChanged: onChanged,
    );
  }

  @override
  bool get wantKeepAlive => true;
}
