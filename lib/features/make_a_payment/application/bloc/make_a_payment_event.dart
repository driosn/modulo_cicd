part of 'make_a_payment_bloc.dart';

@freezed
class MakeAPaymentEvent with _$MakeAPaymentEvent {
  const factory MakeAPaymentEvent.initSelectablePayments(
      PrimarySite primarySite) = _InitSelectablePaymentsEvent;
}
