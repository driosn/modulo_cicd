part of 'property_payment_settings_bloc.dart';

enum PropertyPaymentSettingsStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class PropertyPaymentSettingsState with _$PropertyPaymentSettingsState {
  const factory PropertyPaymentSettingsState({
    @Default(PropertyPaymentSettings.empty)
    PropertyPaymentSettings propertyPaymentSettings,
    @Default(false) bool isRBCPaymentAccount,
    @Default(PropertyPaymentSettingsStatus.initial)
    PropertyPaymentSettingsStatus propertyPaymentSettingsStatus,
  }) = _PropertyPaymentSettingsState;
}
