part of 'property_payment_settings_bloc.dart';

@freezed
class PropertyPaymentSettingsEvent with _$PropertyPaymentSettingsEvent {
  const factory PropertyPaymentSettingsEvent.getPropertyPaymentSettings() =
      _GetPropertyPaymentSettingsEvent;
  const factory PropertyPaymentSettingsEvent.restart() =
      _RestartPropertyPaymentSettingsEvent;
}
