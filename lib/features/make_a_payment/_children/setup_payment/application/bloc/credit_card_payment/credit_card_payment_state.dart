part of 'credit_card_payment_bloc.dart';

@freezed
class CreditCardPaymentState with _$CreditCardPaymentState {
  const factory CreditCardPaymentState.initial() = _Initial;
  const factory CreditCardPaymentState.loadingIntelliPayDialog() =
      _LoadingIntelliPayDialog;
  const factory CreditCardPaymentState.readyIntelliPayDialog(
    HttpServer server,
    RequestIntelliPayCode requestCode,
  ) = _ReadyIntelliPayDialog;
  const factory CreditCardPaymentState.success() = _Success;
  const factory CreditCardPaymentState.failureIntelliPayDialog(MAError error, MakeAPaymentError? makeAPaymentError) =
      _FailureIntelliPayDialog;
  const factory CreditCardPaymentState.paymentDeclined() = _PaymentDeclined;
}
