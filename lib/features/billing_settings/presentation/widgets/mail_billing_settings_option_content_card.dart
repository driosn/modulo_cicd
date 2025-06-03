part of 'bill_delivery_reminder_view.dart';

class _MailBillingSettingsOptionContentCard extends StatelessWidget {
  const _MailBillingSettingsOptionContentCard({
    super.key,
    required AppLocalizations localizations,
    required this.selectedDeliveryOptionNotifier,
    required this.widget,
    required BillDeliveryBloc billDeliveryBloc,
    required PrimarySite primarySite,
    required SiteBloc siteBloc,
    required this.context,
    required ColorPalette colorPalette,
    required this.billDeliveryOption,
    required this.textTheme,
  })  : _localizations = localizations,
        _billDeliveryBloc = billDeliveryBloc,
        _siteBloc = siteBloc,
        _primarySite = primarySite,
        _colorPalette = colorPalette;

  final AppLocalizations _localizations;
  final ValueNotifier<BillDeliveryOption> selectedDeliveryOptionNotifier;
  final BillDeliveryReminderTabView widget;
  final BillDeliveryBloc _billDeliveryBloc;
  final PrimarySite _primarySite;
  final SiteBloc _siteBloc;
  final BuildContext context;
  final ColorPalette _colorPalette;
  final BillDeliveryOption billDeliveryOption;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return BillingSettingsOptionContentCard<BillDeliveryOption>(
      title: _localizations.billDeliveryMailOption,
      value: BillDeliveryOption.mail,
      groupValue: billDeliveryOption,
      onSelected: (value) {
        _billDeliveryBloc.add(
          BillDeliveryEvent.setDefaultValues(
            defaultDeliveryType: BillDeliveryType.fromInt(
              _siteBloc.state.selectedSite.billingSettings.deliveryType,
            ),
            selectedDeliveryType: const BillDeliveryType.mail(),
            defaultEmail: _siteBloc.state.selectedSite.billingSettings.emailAddress,
            defaultPhoneNumber: _siteBloc.state.selectedSite.billingSettings.phoneNumber,
          ),
        );
        selectedDeliveryOptionNotifier.value = value;
        widget.onBillDeliveryOptionSelected(value);
        _billDeliveryBloc.add(
          const BillDeliveryEvent.setDeliveryType(
            BillDeliveryType.mail(),
          ),
        );
      },
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${_primarySite.fullName}${_primarySite.mailBillingAddress}',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(
            height: 8,
          ),
          BlocBuilder<SiteBloc, SiteState>(
            bloc: _siteBloc,
            builder: (context, state) {
              if (state.selectedSite.propertySettings.contactSync == false) {
                return const SizedBox();
              }

              return MATextButton.hyperLink(
                onPressed: () {
                  context.pushNamed(
                    UserInformationRoutes.contactInformation.name!,
                  );
                },
                child: Text(
                  _localizations.updateMailingAddress,
                  style: textTheme.hyperlink.copyWith(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    shadows: [
                      Shadow(
                        color: _colorPalette.textLink,
                        offset: const Offset(0, -4),
                      )
                    ],
                    decorationColor: _colorPalette.textLink,
                  ),
                ),
              );
            },
          ),
          Text(
            _localizations.noPaymentReminderWillBeSent,
            style: textTheme.bodyMedium?.copyWith(
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}
