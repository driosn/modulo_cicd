// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyContentModelImpl _$$CompanyContentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CompanyContentModelImpl(
      contentTypeDescription: json['contentTypeDescription'] as String? ?? '',
      contentType: json['contentType'] == null
          ? const ContentType.unknown()
          : ContentType.fromInt((json['contentType'] as num).toInt()),
      content: json['content'] as String? ?? '',
    );

Map<String, dynamic> _$$CompanyContentModelImplToJson(
        _$CompanyContentModelImpl instance) =>
    <String, dynamic>{
      'contentTypeDescription': instance.contentTypeDescription,
      'contentType': ContentType.toInt(instance.contentType),
      'content': instance.content,
    };
