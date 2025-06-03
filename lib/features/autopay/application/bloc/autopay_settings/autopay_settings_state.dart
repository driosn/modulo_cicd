part of 'autopay_settings_bloc.dart';

@freezed
class AutoPaySettingsState with _$AutoPaySettingsState {
  const factory AutoPaySettingsState({
    @Default(false) bool isAutoPayActive,
    @Default(AutoPaySettingsStatus.initial()) AutoPaySettingsStatus status,
    @Default([]) List<AutoPaySettings> autopaySettingsList,
    @Default(null) AutoPayUpdateSettings? updateResult,
  }) = _AutoPaySettingsState;
}

@freezed
class AutoPaySettingsStatus with _$AutoPaySettingsStatus {
  const factory AutoPaySettingsStatus.initial() = _Initial;
  const factory AutoPaySettingsStatus.loading() = _Loading;
  const factory AutoPaySettingsStatus.success() = _Success;
  const factory AutoPaySettingsStatus.failure(MAError error) = _Failure;
}

extension AutoPaySettingsStatusX on AutoPaySettingsState {
  bool get isRentEnabled => autopaySettingsList
      .any((element) => element.referenceId == rentReferenceId);

  bool hasLoans(String loanId) =>
      autopaySettingsList.any((element) => element.referenceId == loanId);

  AutoPaySettings get rent => autopaySettingsList
      .firstWhere((element) => element.referenceId == rentReferenceId);
}
