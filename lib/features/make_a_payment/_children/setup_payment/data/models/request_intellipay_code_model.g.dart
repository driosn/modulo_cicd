// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_intellipay_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestIntelliPayCodeModelImpl _$$RequestIntelliPayCodeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestIntelliPayCodeModelImpl(
      intelliPayJavascriptCode:
          json['intelliPayJavascriptCode'] as String? ?? '',
      passThrough: json['passThrough'] as String? ?? '',
      token: json['token'] as String? ?? '',
    );

Map<String, dynamic> _$$RequestIntelliPayCodeModelImplToJson(
        _$RequestIntelliPayCodeModelImpl instance) =>
    <String, dynamic>{
      'intelliPayJavascriptCode': instance.intelliPayJavascriptCode,
      'passThrough': instance.passThrough,
      'token': instance.token,
    };
