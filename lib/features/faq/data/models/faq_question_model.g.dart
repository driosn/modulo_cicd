// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaqAnswerItemModelImpl _$$FaqAnswerItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FaqAnswerItemModelImpl(
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
      values: (json['values'] as List<dynamic>?)
              ?.map(
                  (e) => FaqAnswerItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FaqAnswerItemModel>[],
    );

Map<String, dynamic> _$$FaqAnswerItemModelImplToJson(
        _$FaqAnswerItemModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'values': instance.values,
    };

_$FaqSingleComponentModelImpl _$$FaqSingleComponentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FaqSingleComponentModelImpl(
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
      values: (json['values'] as List<dynamic>?)
              ?.map(
                  (e) => FaqAnswerItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FaqAnswerItemModel>[],
    );

Map<String, dynamic> _$$FaqSingleComponentModelImplToJson(
        _$FaqSingleComponentModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'values': instance.values,
    };

_$FaqListModelImpl _$$FaqListModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqListModelImpl(
      type: json['type'] as String? ?? '',
      value: json['value'] as String? ?? '',
      values: (json['values'] as List<dynamic>?)
              ?.map(
                  (e) => FaqAnswerItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FaqAnswerItemModel>[],
    );

Map<String, dynamic> _$$FaqListModelImplToJson(_$FaqListModelImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'values': instance.values,
    };

_$FaqQuestionModelImpl _$$FaqQuestionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FaqQuestionModelImpl(
      group: json['group'] as String? ?? '',
      section: json['section'] as String? ?? '',
      question: json['question'] as String? ?? '',
      answer: (json['answer'] as List<dynamic>?)
              ?.map(
                  (e) => FaqAnswerItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <FaqAnswerItemModel>[],
    );

Map<String, dynamic> _$$FaqQuestionModelImplToJson(
        _$FaqQuestionModelImpl instance) =>
    <String, dynamic>{
      'group': instance.group,
      'section': instance.section,
      'question': instance.question,
      'answer': instance.answer,
    };
