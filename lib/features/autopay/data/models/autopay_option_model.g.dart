// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'autopay_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AutoPayOptionModelImpl _$$AutoPayOptionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AutoPayOptionModelImpl(
      id: json['id'] as String? ?? '',
      autoPayOptionTypeDescription:
          json['autoPayOptionTypeDescription'] as String? ?? '',
      autoPayOptionType: $enumDecodeNullable(
              _$AutoPayOptionTypesEnumMap, json['autoPayOptionType']) ??
          AutoPayOptionTypes.empty,
    );

Map<String, dynamic> _$$AutoPayOptionModelImplToJson(
        _$AutoPayOptionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'autoPayOptionTypeDescription': instance.autoPayOptionTypeDescription,
      'autoPayOptionType':
          _$AutoPayOptionTypesEnumMap[instance.autoPayOptionType]!,
    };

const _$AutoPayOptionTypesEnumMap = {
  AutoPayOptionTypes.empty: 0,
  AutoPayOptionTypes.fixedAmount: 1,
  AutoPayOptionTypes.fullAmount: 2,
  AutoPayOptionTypes.fullAmountNotExceed: 3,
};
