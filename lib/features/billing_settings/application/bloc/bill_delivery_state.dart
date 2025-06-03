part of 'bill_delivery_bloc.dart';

@freezed
class BillDeliveryState with _$BillDeliveryState {
  const factory BillDeliveryState({
    @Default(BillDeliveryType.email()) BillDeliveryType deliveryType,
    @Default(EmailInput.pure()) EmailInput email,
    @Default(PhoneInput.pure()) PhoneInput phone,
    @Default(LeadDaysForBillReminderValues.none) int leadDaysForBillReminder,
    @Default(null) String? emailErrorMessage,
    @Default(null) String? phoneErrorMessage,
    @Default(_Initial()) BillingSettingsUpdateStatus updateStatus,
    @Default(false) bool readMode,
  }) = _BillDeliveryState;
}

@freezed
class BillingSettingsUpdateStatus with _$BillingSettingsUpdateStatus {
  const factory BillingSettingsUpdateStatus.initial() = _Initial;
  const factory BillingSettingsUpdateStatus.updating() = _Updating;
  const factory BillingSettingsUpdateStatus.success() = _Success;
  const factory BillingSettingsUpdateStatus.failure(String message) = _Failure;
}

@freezed
class BillDeliveryType with _$BillDeliveryType {
  const factory BillDeliveryType.email() = _Email;
  const factory BillDeliveryType.mail() = _Mail;
  const factory BillDeliveryType.phone() = _Phone;

  factory BillDeliveryType.fromInt(int deliveryType) {
    switch (deliveryType) {
      case DeliveryTypeValues.mail:
        return const BillDeliveryType.mail();
      case DeliveryTypeValues.email:
        return const BillDeliveryType.email();
      case DeliveryTypeValues.phone:
        return const BillDeliveryType.phone();
      default:
        // TODO: Handle invalid delivery type without breaking the app
        return const BillDeliveryType.mail();
        throw ArgumentError('Invalid delivery type: $deliveryType');
    }
  }
}

extension BillDeliveryTypeX on BillDeliveryType {
  bool isEmail() => this == const BillDeliveryType.email();
  bool isMail() => this == const BillDeliveryType.mail();
  bool isPhone() => this == const BillDeliveryType.phone();
}
