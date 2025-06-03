// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autopay_update_settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoPayUpdateSettingsModelImpl _$$AutoPayUpdateSettingsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoPayUpdateSettingsModelImpl(
      autoPaySettingsId: json['autoPaySettingsId'] as String? ?? null,
      paymentAmount: (json['paymentAmount'] as num?)?.toInt() ?? null,
      autoPayOptionType: $enumDecodeNullable(
              _$AutoPayOptionTypesEnumMap, json['autoPayOptionType']) ??
          AutoPayOptionTypes.empty,
      isActive: json['isActive'] as bool? ?? true,
      paymentMethodType: (json['paymentMethodType'] as num?)?.toInt() ?? 1,
      paymentDay: (json['paymentDay'] as num?)?.toInt() ?? 1,
      residentId: json['residentId'] as String? ?? '',
      residentUserId: json['residentUserId'] as String? ?? '',
      referenceId: json['referenceId'] as String? ?? 'string',
    );

Map<String, dynamic> _$$AutoPayUpdateSettingsModelImplToJson(
        _$AutoPayUpdateSettingsModelImpl instance) =>
    <String, dynamic>{
      'autoPaySettingsId': instance.autoPaySettingsId,
      'paymentAmount': instance.paymentAmount,
      'autoPayOptionType':
          _$AutoPayOptionTypesEnumMap[instance.autoPayOptionType]!,
      'isActive': instance.isActive,
      'paymentMethodType': instance.paymentMethodType,
      'paymentDay': instance.paymentDay,
      'residentId': instance.residentId,
      'residentUserId': instance.residentUserId,
      'referenceId': instance.referenceId,
    };

const _$AutoPayOptionTypesEnumMap = {
  AutoPayOptionTypes.empty: 0,
  AutoPayOptionTypes.fixedAmount: 1,
  AutoPayOptionTypes.fullAmount: 2,
  AutoPayOptionTypes.fullAmountNotExceed: 3,
};
