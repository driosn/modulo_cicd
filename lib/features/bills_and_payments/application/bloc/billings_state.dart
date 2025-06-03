part of 'billings_bloc.dart';

enum BillingsStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class BillingsState with _$BillingsState {
  const factory BillingsState({
    @Default(Billings.empty) Billings billingHistory,
    File? billingPDF,
    @Default(BillingsStatus.initial) BillingsStatus billingsStatus,
    @Default(BillingsStatus.initial) BillingsStatus billingPDFStatus,
    @Default("") String billingLabel,
  }) = _BillingsState;
}
