part of 'payment_settings_bloc.dart';

@freezed
class PaymentSettingsEvent with _$PaymentSettingsEvent {
  const factory PaymentSettingsEvent.getPaymentSettings(
    String propertyId,
    PayToType payToType,
  ) = _GetPaymentSettings;
}
