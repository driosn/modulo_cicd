part of 'autopay_settings_bloc.dart';

@freezed
class AutoPaySettingsEvent with _$AutoPaySettingsEvent {
  //
  // Setters
  //
  const factory AutoPaySettingsEvent.fetch(String residentId) =
      _FetchAutoPaySettingsEvent;
  const factory AutoPaySettingsEvent.fetchAfterUpdate(String residentId) =
      _FetchAfterUpdateAutoPaySettingsEvent;
  const factory AutoPaySettingsEvent.load() = _LoadAutoPaySettingsEvent;
  const factory AutoPaySettingsEvent.update({
    required String residentId,
    required String autopayId,
    required OptionInfo paymentDate,
    required DollarInput withdrawalAmount,
    required WithdrawalAmountOption withdrawalAmountOption,
    required String referenceId,
    required String residentUserId,
  }) = _UpdateAutoPaySettingsEvent;
  const factory AutoPaySettingsEvent.reset({
    required String residentId,
    required String referenceId,
    required int paymentDay,
    required AutoPayOptionTypes autopayOptionType,
    required String autopayId,
    required String residentUserId,
  }) = _ResetAutoPaySettingsEvent;
  const factory AutoPaySettingsEvent.resetStatus() =
      _ResetStatusAutoPaySettingsEvent;
}
