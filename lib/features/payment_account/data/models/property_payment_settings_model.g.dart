// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_payment_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyPaymentSettingsModelImpl _$$PropertyPaymentSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyPaymentSettingsModelImpl(
      id: json['id'] as String? ?? '',
      propertyId: json['propertyId'] as String? ?? '',
      paymentProcessorTypeDescription:
          json['paymentProcessorTypeDescription'] as String? ?? '',
      paymentProcessor: (json['paymentProcessor'] as num?)?.toInt() ?? 1,
      paymentMethodTypeDescription:
          json['paymentMethodTypeDescription'] as String? ?? '',
      paymentMethod: (json['paymentMethod'] as num?)?.toInt() ?? 1,
      payToTypeDescription: json['payToTypeDescription'] as String? ?? '',
      payTo: (json['payTo'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$PropertyPaymentSettingsModelImplToJson(
        _$PropertyPaymentSettingsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'propertyId': instance.propertyId,
      'paymentProcessorTypeDescription':
          instance.paymentProcessorTypeDescription,
      'paymentProcessor': instance.paymentProcessor,
      'paymentMethodTypeDescription': instance.paymentMethodTypeDescription,
      'paymentMethod': instance.paymentMethod,
      'payToTypeDescription': instance.payToTypeDescription,
      'payTo': instance.payTo,
    };
