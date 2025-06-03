part of 'bill_delivery_bloc.dart';

@freezed
class BillDeliveryEvent with _$BillDeliveryEvent {
  //
  // Setters
  //
  const factory BillDeliveryEvent.setDeliveryType(
      BillDeliveryType deliveryType) = _SetDeliveryType;
  const factory BillDeliveryEvent.setEmailAddress(String email) =
      _SetEmailAddress;
  const factory BillDeliveryEvent.setPhoneNumber(String phoneNumber) =
      _SetPhoneNumber;
  const factory BillDeliveryEvent.setLeadDaysForBillReminder(int leadDays) =
      _SetLeadDaysForBillReminder;

  const factory BillDeliveryEvent.setBillingSettings({
    required String email,
    required String phoneNumber,
    required int leadDays,
  }) = _SetBillingSettings;

  const factory BillDeliveryEvent.setReadMode(
    bool readmode,
  ) = _SetReadMode;

  const factory BillDeliveryEvent.setDefaultValues({
    required BillDeliveryType defaultDeliveryType,
    required BillDeliveryType selectedDeliveryType,
    required String defaultEmail,
    required String defaultPhoneNumber,
  }) = _SetDefaultValues;

  const factory BillDeliveryEvent.initializeBillingSettings({
    required BillDeliveryType billDeliveryType,
    required String emailAddress,
    required String phoneNumber,
    required int leadDays,
  }) = _InitializeBillingSettings;

  //
  // Validators
  //
  const factory BillDeliveryEvent.validateEmailAddress() =
      _ValidateEmailAddress;
  const factory BillDeliveryEvent.validatePhoneNumber() = _ValidatePhoneNumber;

  //
  // Others
  //

  const factory BillDeliveryEvent.update({
    required String residentId,
  }) = _UpdateEvent;
}
