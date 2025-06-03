part of 'whitelabel_bloc.dart';

@freezed
class WhitelabelEvent with _$WhitelabelEvent {
  const factory WhitelabelEvent.getWhitelabel({
    int? corePropertyId,
    int? coreCompanyId,
  }) = _GetWhitelabelEvent;
  const factory WhitelabelEvent.resetWhitelabel() = _ResetWhitelabelEvent;
  const factory WhitelabelEvent.setupWhitelabel({
    int? corePropertyId,
    int? coreCompanyId,
  }) = _SetupWhitelabelEvent;
}
