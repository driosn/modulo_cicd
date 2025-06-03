part of 'bill_delivery_reminder_view.dart';

class _TextMessageBillingSettingsOptionContentCard extends StatefulWidget {
  const _TextMessageBillingSettingsOptionContentCard({
    required AppLocalizations localizations,
    required this.selectedDeliveryOptionNotifier,
    required this.widget,
    required BillDeliveryBloc billDeliveryBloc,
    required String phoneNumber,
    required SiteBloc siteBloc,
    required this.billDeliveryOption,
    required this.textTheme,
  })  : _localizations = localizations,
        _billDeliveryBloc = billDeliveryBloc,
        _phoneNumber = phoneNumber,
        _siteBloc = siteBloc;

  final AppLocalizations _localizations;
  final ValueNotifier<BillDeliveryOption> selectedDeliveryOptionNotifier;
  final BillDeliveryReminderTabView widget;
  final BillDeliveryBloc _billDeliveryBloc;
  final String _phoneNumber;
  final SiteBloc _siteBloc;
  final BillDeliveryOption billDeliveryOption;
  final TextTheme textTheme;

  @override
  State<_TextMessageBillingSettingsOptionContentCard> createState() =>
      _TextMessageBillingSettingsOptionContentCardState();
}

class _TextMessageBillingSettingsOptionContentCardState
    extends State<_TextMessageBillingSettingsOptionContentCard> {
  late TextEditingController _phoneController;

  @override
  void initState() {
    _phoneController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BillingSettingsOptionContentCard<BillDeliveryOption>(
      title: widget._localizations.billDeliveryPhoneOption,
      value: BillDeliveryOption.phone,
      groupValue: widget.billDeliveryOption,
      onSelected: (value) {
        widget._billDeliveryBloc.add(
          BillDeliveryEvent.setDefaultValues(
            defaultDeliveryType: BillDeliveryType.fromInt(
              widget._siteBloc.state.selectedSite.billingSettings.deliveryType,
            ),
            selectedDeliveryType: const BillDeliveryType.phone(),
            defaultEmail: widget
                ._siteBloc.state.selectedSite.billingSettings.emailAddress,
            defaultPhoneNumber:
                widget._siteBloc.state.selectedSite.billingSettings.phoneNumber,
          ),
        );
        widget.selectedDeliveryOptionNotifier.value = value;
        widget.widget.onBillDeliveryOptionSelected(value);
        widget._billDeliveryBloc.add(
          const BillDeliveryEvent.setDeliveryType(
            BillDeliveryType.phone(),
          ),
        );
      },
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<BillDeliveryBloc, BillDeliveryState>(
            bloc: locator<BillDeliveryBloc>(),
            builder: (context, state) {
              _phoneController.text = state.phone.value;
              return MATextFormField.phoneNumber(
                label: widget._localizations.phoneNumberField,
                controller: _phoneController,
                onChanged: (value) {
                  widget._billDeliveryBloc.add(
                    BillDeliveryEvent.setPhoneNumber(value),
                  );
                },
                enabled:
                    widget.billDeliveryOption == BillDeliveryOption.phone &&
                        state.readMode == false,
                errorText: state.phoneErrorMessage,
                hasError: state.phoneErrorMessage != null,
                inputFormatters: [
                  MaskedInputFormatter('(000) 000-0000'),
                  LengthLimitingTextInputFormatter(14),
                ],
              );
            },
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            widget._localizations.noPaymentReminderWillBeSent,
            style: widget.textTheme.bodyMedium?.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
