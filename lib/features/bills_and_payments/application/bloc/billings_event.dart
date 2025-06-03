part of 'billings_bloc.dart';

@freezed
class BillingsEvent with _$BillingsEvent {
  const factory BillingsEvent.getBillings({
    required String companyId,
    required String residentId,
  }) = _GetBillingsEvent;
  const factory BillingsEvent.getBillingPDF(
    String billingId,
    String billingLabel,
  ) = _GetBillingPDFEvent;
  const factory BillingsEvent.restart() = _RestartBillingsEvent;
}
