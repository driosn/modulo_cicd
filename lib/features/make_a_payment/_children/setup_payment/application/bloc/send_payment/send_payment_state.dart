part of 'send_payment_bloc.dart';

@freezed
class SendPaymentState with _$SendPaymentState {
  const factory SendPaymentState.initial() = _Initial;
  const factory SendPaymentState.loading() = _Loading;
  const factory SendPaymentState.success() = _Success;
  const factory SendPaymentState.failure(MAError error, MakeAPaymentError? makeAPaymentError) = _Failure;
}
