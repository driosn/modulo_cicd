// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'document_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DocumentModelImpl _$$DocumentModelImplFromJson(Map<String, dynamic> json) =>
    _$DocumentModelImpl(
      title: json['title'] as String? ?? '',
      subtitle: json['subtitle'] as String? ?? '',
      sections: (json['sections'] as List<dynamic>?)
              ?.map((e) => SectionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$DocumentModelImplToJson(_$DocumentModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'sections': instance.sections,
    };

_$SectionModelImpl _$$SectionModelImplFromJson(Map<String, dynamic> json) =>
    _$SectionModelImpl(
      title: json['title'] as String? ?? '',
      order: (json['order'] as num?)?.toInt() ?? 1,
      elements: (json['elements'] as List<dynamic>?)
              ?.map((e) => ElementModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SectionModelImplToJson(_$SectionModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'order': instance.order,
      'elements': instance.elements,
    };

_$ElementModelImpl _$$ElementModelImplFromJson(Map<String, dynamic> json) =>
    _$ElementModelImpl(
      type: json['type'] as String? ?? '',
      bold: json['bold'] as bool? ?? false,
      link: json['link'] as bool? ?? false,
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => ElementModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      content: json['content'] as String? ?? '',
      box: json['box'] as bool? ?? false,
      center: json['center'] as bool? ?? false,
      showPrefixSymbol: json['showPrefixSymbol'] as bool? ?? true,
      fullUrl: json['fullUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$ElementModelImplToJson(_$ElementModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'bold': instance.bold,
      'link': instance.link,
      'children': instance.children,
      'content': instance.content,
      'box': instance.box,
      'center': instance.center,
      'showPrefixSymbol': instance.showPrefixSymbol,
      'fullUrl': instance.fullUrl,
    };
