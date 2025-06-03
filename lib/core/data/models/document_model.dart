import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/domain/document.dart';

part 'document_model.freezed.dart';
part 'document_model.g.dart';

@freezed
class DocumentModel extends Document with _$DocumentModel {
  const factory DocumentModel({
    @Default('') String title,
    @Default('') String subtitle,
    @Default([]) List<SectionModel> sections,
  }) = _DocumentModel;

  factory DocumentModel.fromJson(Map<String, dynamic> json) => _$DocumentModelFromJson(json);
}

@freezed
class SectionModel extends Section with _$SectionModel {
  const factory SectionModel({
    @Default('') String title,
    @Default(1) int order,
    @Default([]) List<ElementModel> elements,
  }) = _SectionModel;

  factory SectionModel.fromJson(Map<String, dynamic> json) => _$SectionModelFromJson(json);
}

@freezed
class ElementModel extends Element with _$ElementModel {
  const factory ElementModel({
    @Default('') String type,
    @Default(false) bool bold,
    @Default(false) bool link,
    @Default([]) List<ElementModel> children,
    @Default('') String content,
    @Default(false) bool box,
    @Default(false) bool center,
    @Default(true) bool showPrefixSymbol,
    @Default('') String fullUrl,
  }) = _ElementModel;

  factory ElementModel.fromJson(Map<String, dynamic> json) => _$ElementModelFromJson(json);
}
