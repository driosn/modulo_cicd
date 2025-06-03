import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';

part 'billings_model.freezed.dart';
part 'billings_model.g.dart';

@freezed
class BillingsModel extends Billings with _$BillingsModel {
  const factory BillingsModel({
    @Default(<BillingModel>[]) List<BillingModel> billings,
  }) = _BillingsModel;

  factory BillingsModel.fromJson(Map<String, dynamic> json) =>
      _$BillingsModelFromJson(json);
}

@freezed
class BillingModel extends Billing with _$BillingModel {
  const factory BillingModel({
    @Default('') String id,
    @Default(0) int invoiceMonth,
    @Default(0) int invoiceYear,
  }) = _BillingModel;

  factory BillingModel.fromJson(Map<String, dynamic> json) =>
      _$BillingModelFromJson(json);
}
