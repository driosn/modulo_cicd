// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'acceptance_criteria_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AcceptanceCriteriaInfoModelImpl _$$AcceptanceCriteriaInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AcceptanceCriteriaInfoModelImpl(
      residentUserId: json['residentUserId'] as String? ?? '',
      legalDocumentId: json['legalDocumentId'] as String? ?? '',
      legalDocumentTypeDescription:
          json['legalDocumentTypeDescription'] as String? ?? '',
      legalDocumentType: json['legalDocumentType'] == null
          ? const LegalDocumentType.unknown()
          : LegalDocumentType.fromInt(
              (json['legalDocumentType'] as num).toInt()),
      isAccepted: json['isAccepted'] as bool? ?? false,
    );

Map<String, dynamic> _$$AcceptanceCriteriaInfoModelImplToJson(
        _$AcceptanceCriteriaInfoModelImpl instance) =>
    <String, dynamic>{
      'residentUserId': instance.residentUserId,
      'legalDocumentId': instance.legalDocumentId,
      'legalDocumentTypeDescription': instance.legalDocumentTypeDescription,
      'legalDocumentType': LegalDocumentType.toInt(instance.legalDocumentType),
      'isAccepted': instance.isAccepted,
    };
