// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_payment_setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyPaymentSettingModelImpl _$$PropertyPaymentSettingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyPaymentSettingModelImpl(
      id: json['id'] as String? ?? '',
      propertyId: json['propertyId'] as String? ?? '',
      paymentProcessorTypeDescription:
          json['paymentProcessorTypeDescription'] as String? ?? '',
      paymentProcessorType: PaymentProcessorType.fromInt(
          (json['paymentProcessorType'] as num).toInt()),
      paymentMethodTypeDescription:
          json['paymentMethodTypeDescription'] as String? ?? '',
      paymentMethodType:
          PaymentMethodType.fromInt((json['paymentMethodType'] as num).toInt()),
      payToTypeDescription: json['payToTypeDescription'] as String? ?? '',
      payToType: PayToType.fromInt((json['payToType'] as num).toInt()),
    );

Map<String, dynamic> _$$PropertyPaymentSettingModelImplToJson(
        _$PropertyPaymentSettingModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'propertyId': instance.propertyId,
      'paymentProcessorTypeDescription':
          instance.paymentProcessorTypeDescription,
      'paymentProcessorType':
          PaymentProcessorType.toInt(instance.paymentProcessorType),
      'paymentMethodTypeDescription': instance.paymentMethodTypeDescription,
      'paymentMethodType': PaymentMethodType.toInt(instance.paymentMethodType),
      'payToTypeDescription': instance.payToTypeDescription,
      'payToType': PayToType.toInt(instance.payToType),
    };
