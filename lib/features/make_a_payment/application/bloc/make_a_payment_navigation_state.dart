part of 'make_a_payment_navigation_bloc.dart';

@freezed
class MakeAPaymentNavigationState with _$MakeAPaymentNavigationState {
  const factory MakeAPaymentNavigationState({
    @Default(true) bool navigatedFromSummary,
  }) = _MakeAPaymentNavigationState;
}
