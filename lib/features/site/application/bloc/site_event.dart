part of 'site_bloc.dart';

@freezed
class SiteEvent with _$SiteEvent {
  const factory SiteEvent.selectByResidentId(String residentId) =
      _SelectByResidentIdEvent;
  const factory SiteEvent.setSite(Site site) = _SetSiteEvent;
  const factory SiteEvent.setPrimarySite(Site site) = _SetPrimarySiteEvent;
  const factory SiteEvent.setBillSettings({
    required BillDeliveryType deliveryType,
    required String email,
    required String phoneNumber,
    required int leadDaysForBillReminder,
  }) = _SetBillSettingsEvent;
  const factory SiteEvent.setContactInformation({
    required String residentEmail,
    required String cellPhone,
    required String homePhone,
    required bool useBillingAddress,
    required String billingAddress,
    required String billingCity,
    required String billingState,
    required String billingPostalCode,
  }) = _SetContactInformationEvent;
}
