import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';

part 'company_content_model.freezed.dart';
part 'company_content_model.g.dart';

@freezed
class CompanyContentModel with _$CompanyContentModel {
  const factory CompanyContentModel({
    @Default('') String contentTypeDescription,
    @Default(ContentType.unknown())
    @JsonKey(
      name: 'contentType',
      fromJson: ContentType.fromInt,
      toJson: ContentType.toInt,
    )    
    ContentType contentType,
    @Default('') String content,
  }) = _CompanyContentModel;

  factory CompanyContentModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyContentModelFromJson(json);
}