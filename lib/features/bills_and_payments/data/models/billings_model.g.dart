// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingsModelImpl _$$BillingsModelImplFromJson(Map<String, dynamic> json) =>
    _$BillingsModelImpl(
      billings: (json['billings'] as List<dynamic>?)
              ?.map((e) => BillingModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <BillingModel>[],
    );

Map<String, dynamic> _$$BillingsModelImplToJson(_$BillingsModelImpl instance) =>
    <String, dynamic>{
      'billings': instance.billings,
    };

_$BillingModelImpl _$$BillingModelImplFromJson(Map<String, dynamic> json) =>
    _$BillingModelImpl(
      id: json['id'] as String? ?? '',
      invoiceMonth: (json['invoiceMonth'] as num?)?.toInt() ?? 0,
      invoiceYear: (json['invoiceYear'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$BillingModelImplToJson(_$BillingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoiceMonth': instance.invoiceMonth,
      'invoiceYear': instance.invoiceYear,
    };
