// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_accounts_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentAccountsModelImpl _$$PaymentAccountsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentAccountsModelImpl(
      paymentAccountId: json['paymentAccountId'] as String? ?? '',
      paymentProcessor: json['paymentProcessor'] == null
          ? const PaymentProcessorModel()
          : PaymentProcessorModel.fromJson(
              json['paymentProcessor'] as Map<String, dynamic>),
      bankAccountOption: json['bankAccountOption'] == null
          ? const BankAccountOptionModel()
          : BankAccountOptionModel.fromJson(
              json['bankAccountOption'] as Map<String, dynamic>),
      bankRoutingNumber: json['bankRoutingNumber'] as String? ?? '',
      bankAccountEnding: json['bankAccountEnding'] as String? ?? '',
      maskedBankAccountNumber: json['maskedBankAccountNumber'] as String? ?? '',
      creditCardEnding: json['creditCardEnding'] as String? ?? '',
      maskedCreditCardAccountNumber:
          json['maskedCreditCardAccountNumber'] as String? ?? '',
    );

Map<String, dynamic> _$$PaymentAccountsModelImplToJson(
        _$PaymentAccountsModelImpl instance) =>
    <String, dynamic>{
      'paymentAccountId': instance.paymentAccountId,
      'paymentProcessor': instance.paymentProcessor,
      'bankAccountOption': instance.bankAccountOption,
      'bankRoutingNumber': instance.bankRoutingNumber,
      'bankAccountEnding': instance.bankAccountEnding,
      'maskedBankAccountNumber': instance.maskedBankAccountNumber,
      'creditCardEnding': instance.creditCardEnding,
      'maskedCreditCardAccountNumber': instance.maskedCreditCardAccountNumber,
    };

_$PaymentProcessorModelImpl _$$PaymentProcessorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentProcessorModelImpl(
      paymentProcessorType: json['paymentProcessorType'] as String? ?? '',
      paymentProcessorTypeDescription:
          json['paymentProcessorTypeDescription'] as String? ?? '',
    );

Map<String, dynamic> _$$PaymentProcessorModelImplToJson(
        _$PaymentProcessorModelImpl instance) =>
    <String, dynamic>{
      'paymentProcessorType': instance.paymentProcessorType,
      'paymentProcessorTypeDescription':
          instance.paymentProcessorTypeDescription,
    };

_$BankAccountOptionModelImpl _$$BankAccountOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BankAccountOptionModelImpl(
      bankAccountType: $enumDecodeNullable(
              _$BankAccountTypeEnumMap, json['bankAccountType']) ??
          BankAccountType.unknown,
      bankAccountTypeDescription:
          json['bankAccountTypeDescription'] as String? ?? '',
    );

Map<String, dynamic> _$$BankAccountOptionModelImplToJson(
        _$BankAccountOptionModelImpl instance) =>
    <String, dynamic>{
      'bankAccountType': _$BankAccountTypeEnumMap[instance.bankAccountType]!,
      'bankAccountTypeDescription': instance.bankAccountTypeDescription,
    };

const _$BankAccountTypeEnumMap = {
  BankAccountType.checking: 'Checking',
  BankAccountType.savings: 'Savings',
  BankAccountType.unknown: 'Unknown',
};
