// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_claim_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserClaimModelImpl _$$UserClaimModelImplFromJson(Map<String, dynamic> json) =>
    _$UserClaimModelImpl(
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
      valueType: json['valueType'] as String? ?? '',
      issuer: json['issuer'] as String? ?? '',
      originalIssuer: json['originalIssuer'] as String? ?? '',
    );

Map<String, dynamic> _$$UserClaimModelImplToJson(
        _$UserClaimModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'valueType': instance.valueType,
      'issuer': instance.issuer,
      'originalIssuer': instance.originalIssuer,
    };
