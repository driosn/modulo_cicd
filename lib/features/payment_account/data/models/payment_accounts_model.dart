import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/payment_account/domain/entities/payment_accounts.dart';
import 'package:resident_app/features/payment_account/enums/payment_account.dart';

part 'payment_accounts_model.freezed.dart';
part 'payment_accounts_model.g.dart';

@freezed
class PaymentAccountsModel extends PaymentAccounts with _$PaymentAccountsModel {
  const factory PaymentAccountsModel({
    @Default('') String paymentAccountId,
    @Default(PaymentProcessorModel()) PaymentProcessorModel paymentProcessor,
    @Default(BankAccountOptionModel()) BankAccountOptionModel bankAccountOption,
    @Default('') String bankRoutingNumber,
    @Default('') String bankAccountEnding,
    @Default('') String maskedBankAccountNumber,
    @Default('') String creditCardEnding,
    @Default('') String maskedCreditCardAccountNumber,
  }) = _PaymentAccountsModel;

  factory PaymentAccountsModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentAccountsModelFromJson(json);
}

@freezed
class PaymentProcessorModel extends PaymentProcessor
    with _$PaymentProcessorModel {
  const factory PaymentProcessorModel({
    @Default('') String paymentProcessorType,
    @Default('') String paymentProcessorTypeDescription,
  }) = _PaymentProcessorModel;

  factory PaymentProcessorModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentProcessorModelFromJson(json);
}

@freezed
class BankAccountOptionModel extends BankAccountOption
    with _$BankAccountOptionModel {
  const factory BankAccountOptionModel({
    @Default(BankAccountType.unknown) BankAccountType bankAccountType,
    @Default('') String bankAccountTypeDescription,
  }) = _BankAccountOptionModel;

  factory BankAccountOptionModel.fromJson(Map<String, dynamic> json) =>
      _$BankAccountOptionModelFromJson(json);
}
