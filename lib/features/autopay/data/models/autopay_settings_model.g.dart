// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autopay_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoPaySettingsModelImpl _$$AutoPaySettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoPaySettingsModelImpl(
      id: json['id'] as String? ?? '',
      autoPayOption: json['autoPayOption'] == null
          ? const AutoPayOptionModel()
          : AutoPayOptionModel.fromJson(
              json['autoPayOption'] as Map<String, dynamic>),
      isActive: json['isActive'] as bool? ?? false,
      residentId: json['residentId'] as String? ?? '',
      referenceId: json['referenceId'] as String? ?? '',
      payAmount: (json['payAmount'] as num?)?.toInt() ?? 0,
      paymentMethodTypeDescription:
          json['paymentMethodTypeDescription'] as String? ?? '',
      paymentMethodType: (json['paymentMethodType'] as num?)?.toInt() ?? 1,
      payDay: (json['payDay'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$$AutoPaySettingsModelImplToJson(
        _$AutoPaySettingsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'autoPayOption': instance.autoPayOption,
      'isActive': instance.isActive,
      'residentId': instance.residentId,
      'referenceId': instance.referenceId,
      'payAmount': instance.payAmount,
      'paymentMethodTypeDescription': instance.paymentMethodTypeDescription,
      'paymentMethodType': instance.paymentMethodType,
      'payDay': instance.payDay,
    };
