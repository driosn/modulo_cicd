part of 'summary_bloc.dart';

@freezed
class SummaryEvent with _$SummaryEvent {
  const factory SummaryEvent.getSummaryContent({
    required User user,
    required PrimarySite selectedSite,
  }) = _GetSummaryContentEvent;
}
