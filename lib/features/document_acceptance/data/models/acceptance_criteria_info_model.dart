import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/features/document_acceptance/domain/entities/acceptance_criteria_info.dart';

part 'acceptance_criteria_info_model.freezed.dart';
part 'acceptance_criteria_info_model.g.dart';

@freezed
class AcceptanceCriteriaInfoModel extends AcceptanceCriteriaInfo with _$AcceptanceCriteriaInfoModel {
  const factory AcceptanceCriteriaInfoModel({
    @Default('') String residentUserId,
    @Default('') String legalDocumentId,
    @Default('') String legalDocumentTypeDescription,
    @Default(LegalDocumentType.unknown())
    @JsonKey(
      name: 'legalDocumentType',
      fromJson: LegalDocumentType.fromInt,
      toJson: LegalDocumentType.toInt,
    )
    LegalDocumentType legalDocumentType,
    @Default(false) bool isAccepted,
  }) = _AcceptanceCriteriaInfoModel;

  factory AcceptanceCriteriaInfoModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AcceptanceCriteriaInfoModelFromJson(json);
}
