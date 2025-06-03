part of 'bill_delivery_reminder_view.dart';

class _EmailBillingSettingsOptionContentCard extends StatefulWidget {
  const _EmailBillingSettingsOptionContentCard({
    required AppLocalizations localizations,
    required this.selectedDeliveryOptionNotifier,
    required this.widget,
    required SiteBloc siteBloc,
    required BillDeliveryBloc billDeliveryBloc,
    required this.billDeliveryOption,
  })  : _localizations = localizations,
        _siteBloc = siteBloc,
        _billDeliveryBloc = billDeliveryBloc;

  final AppLocalizations _localizations;
  final ValueNotifier<BillDeliveryOption> selectedDeliveryOptionNotifier;
  final BillDeliveryReminderTabView widget;
  final SiteBloc _siteBloc;
  final BillDeliveryBloc _billDeliveryBloc;
  final BillDeliveryOption billDeliveryOption;

  @override
  State<_EmailBillingSettingsOptionContentCard> createState() =>
      _EmailBillingSettingsOptionContentCardState();
}

class _EmailBillingSettingsOptionContentCardState
    extends State<_EmailBillingSettingsOptionContentCard> {
  late TextEditingController _emailController;

  @override
  void initState() {
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BillingSettingsOptionContentCard<BillDeliveryOption>(
      title: widget._localizations.billDeliveryEmailOption,
      value: BillDeliveryOption.email,
      groupValue: widget.billDeliveryOption,
      onSelected: (value) {
        widget._billDeliveryBloc.add(
          BillDeliveryEvent.setDefaultValues(
            defaultDeliveryType: BillDeliveryType.fromInt(
              widget._siteBloc.state.selectedSite.billingSettings.deliveryType,
            ),
            selectedDeliveryType: const BillDeliveryType.email(),
            defaultEmail: widget
                ._siteBloc.state.selectedSite.billingSettings.emailAddress,
            defaultPhoneNumber:
                widget._siteBloc.state.selectedSite.billingSettings.phoneNumber,
          ),
        );
        widget.selectedDeliveryOptionNotifier.value = value;
        widget.widget.onBillDeliveryOptionSelected(value);
        if (BillDeliveryType.fromInt(widget
                    ._siteBloc.state.selectedSite.billingSettings.deliveryType)
                .isEmail() &&
            widget._billDeliveryBloc.state.email.isPure) {
          widget._billDeliveryBloc.add(
            const BillDeliveryEvent.setEmailAddress(''),
          );
        }
        widget._billDeliveryBloc.add(
          const BillDeliveryEvent.setDeliveryType(
            BillDeliveryType.email(),
          ),
        );
      },
      content: BlocBuilder<BillDeliveryBloc, BillDeliveryState>(
        bloc: locator<BillDeliveryBloc>(),
        builder: (context, state) {
          _emailController.text = state.email.value;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MATextFormField.email(
                label:
                    '${widget._localizations.emailField} ${widget._localizations.addressField.toLowerCase()}',
                controller: _emailController,
                onChanged: (value) => widget._billDeliveryBloc.add(
                  BillDeliveryEvent.setEmailAddress(value),
                ),
                enabled:
                    widget.billDeliveryOption == BillDeliveryOption.email &&
                        state.readMode == false,
                errorText: state.emailErrorMessage,
                hasError: state.emailErrorMessage != null,
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  MACheckbox(
                    isOn: state.leadDaysForBillReminder !=
                        LeadDaysForBillReminderValues.none,
                    onChanged: (value) {
                      widget._billDeliveryBloc.add(
                        BillDeliveryEvent.setLeadDaysForBillReminder(
                          state.leadDaysForBillReminder ==
                                  LeadDaysForBillReminderValues.none
                              ? LeadDaysForBillReminderValues.defaultValue
                              : LeadDaysForBillReminderValues.none,
                        ),
                      );
                    },
                  ),
                  Flexible(
                    child: Text(
                      widget._localizations.sendAnEmailReminder,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              if (state.leadDaysForBillReminder !=
                  LeadDaysForBillReminderValues.none)
                MASelectorInputField<int>(
                  labelText: widget._localizations.daysBeforeDueDate,
                  hintText: widget._localizations.daysBeforeDueDate,
                  initialValue: state.leadDaysForBillReminder,
                  menuItems: generateMenuItems(widget._localizations),
                  onSelectedItem: (int day) {
                    widget._billDeliveryBloc.add(
                      BillDeliveryEvent.setLeadDaysForBillReminder(
                        day,
                      ),
                    );
                  },
                ),
            ],
          );
        },
      ),
    );
  }

  List<MASelectorInputItem<int>> generateMenuItems(
      AppLocalizations localizations) {
    return List.generate(LeadDaysForBillReminderList.length, (index) {
      int number = index + 1;
      return MASelectorInputItem<int>(
        value: index + 1,
        label: "$number ${localizations.nDay(number.toString())}",
      );
    });
  }
}
