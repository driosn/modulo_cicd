// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AnnouncementModelImpl _$$AnnouncementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AnnouncementModelImpl(
      id: json['id'] as String? ?? '',
      subject: json['subject'] as String? ?? '',
      body: json['body'] as String? ?? '',
      order: (json['order'] as num?)?.toInt() ?? 0,
      isCompanyWide: json['isCompanyWide'] as bool? ?? false,
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
      isRead: json['isRead'] as bool? ?? false,
    );

Map<String, dynamic> _$$AnnouncementModelImplToJson(
        _$AnnouncementModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject': instance.subject,
      'body': instance.body,
      'order': instance.order,
      'isCompanyWide': instance.isCompanyWide,
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'isRead': instance.isRead,
    };
