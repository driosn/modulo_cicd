part of 'credit_card_payment_bloc.dart';

@freezed
class CreditCardPaymentEvent with _$CreditCardPaymentEvent {
  const factory CreditCardPaymentEvent.processIntelliPayDialog(
    RequestIntelliPayCodeParams params,
  ) = _ProcessIntelliPayDialogEvent;
  const factory CreditCardPaymentEvent.approvePayment() = _ApprovePaymentEvent;
  const factory CreditCardPaymentEvent.declinePayment() = _DeclinePaymentEvent;
}
