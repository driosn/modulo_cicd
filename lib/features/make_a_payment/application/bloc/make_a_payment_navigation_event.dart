part of 'make_a_payment_navigation_bloc.dart';

@freezed
class MakeAPaymentNavigationEvent with _$MakeAPaymentNavigationEvent {
  const factory MakeAPaymentNavigationEvent.setNavigatedFromSummary({
    required bool isNavigatedFromSummary,
  }) = _SetNavigatedFromSummaryEvent;
}
