part of 'send_payment_bloc.dart';

@freezed
class SendPaymentEvent with _$SendPaymentEvent {
  const factory SendPaymentEvent.sendPayment({
    required double amount,
    required PayToType payToType,
    required bool processAdditionalPayment,
    required String referenceId,
    required String referenceTitle,
    required String residentId,
    required String residentUserId,
  }) = _SendPayment;
}
