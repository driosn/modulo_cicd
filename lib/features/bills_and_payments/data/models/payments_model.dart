import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';

part 'payments_model.freezed.dart';
part 'payments_model.g.dart';

@freezed
class PaymentsModel extends Payments with _$PaymentsModel {
  const factory PaymentsModel({
    @Default(<PaymentModel>[]) List<PaymentModel> payments,
  }) = _PaymentsModel;

  factory PaymentsModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentsModelFromJson(json);
}

@freezed
class PaymentModel extends Payment with _$PaymentModel {
  const factory PaymentModel({
    @Default(0) int transactionNumber,
    @Default(0) double paymentAmount,
    @Default('') String paymentDate,
    @Default('') String payToTypeDescription,
    @Default(0) int payToType,
    @Default('') String payToName,
    @Default('') String paymentTypeDescription,
    @Default(0) int paymentType,
    @Default('') String loanApplicationTypeDescription,
    @Default(0) int loanApplicationType,
    @Default('') String paymentStatusDescription,
    @Default(0) int paymentStatus,
  }) = _PaymentModel;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);
}
