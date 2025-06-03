// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payments_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentsModelImpl _$$PaymentsModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentsModelImpl(
      payments: (json['payments'] as List<dynamic>?)
              ?.map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <PaymentModel>[],
    );

Map<String, dynamic> _$$PaymentsModelImplToJson(_$PaymentsModelImpl instance) =>
    <String, dynamic>{
      'payments': instance.payments,
    };

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      transactionNumber: (json['transactionNumber'] as num?)?.toInt() ?? 0,
      paymentAmount: (json['paymentAmount'] as num?)?.toDouble() ?? 0,
      paymentDate: json['paymentDate'] as String? ?? '',
      payToTypeDescription: json['payToTypeDescription'] as String? ?? '',
      payToType: (json['payToType'] as num?)?.toInt() ?? 0,
      payToName: json['payToName'] as String? ?? '',
      paymentTypeDescription: json['paymentTypeDescription'] as String? ?? '',
      paymentType: (json['paymentType'] as num?)?.toInt() ?? 0,
      loanApplicationTypeDescription:
          json['loanApplicationTypeDescription'] as String? ?? '',
      loanApplicationType: (json['loanApplicationType'] as num?)?.toInt() ?? 0,
      paymentStatusDescription:
          json['paymentStatusDescription'] as String? ?? '',
      paymentStatus: (json['paymentStatus'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'transactionNumber': instance.transactionNumber,
      'paymentAmount': instance.paymentAmount,
      'paymentDate': instance.paymentDate,
      'payToTypeDescription': instance.payToTypeDescription,
      'payToType': instance.payToType,
      'payToName': instance.payToName,
      'paymentTypeDescription': instance.paymentTypeDescription,
      'paymentType': instance.paymentType,
      'loanApplicationTypeDescription': instance.loanApplicationTypeDescription,
      'loanApplicationType': instance.loanApplicationType,
      'paymentStatusDescription': instance.paymentStatusDescription,
      'paymentStatus': instance.paymentStatus,
    };
