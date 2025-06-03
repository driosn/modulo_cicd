part of 'payments_bloc.dart';

@freezed
class PaymentsEvent with _$PaymentsEvent {
  const factory PaymentsEvent.getPayments({
    required String propertyId,
  }) = _GetPaymentsEvent;
  const factory PaymentsEvent.restart() = _RestartPaymentsEvent;
}
