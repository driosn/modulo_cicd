import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/faq/domain/entities/faq_answer_item.dart';
import 'package:resident_app/features/faq/domain/entities/faq_list.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';
import 'package:resident_app/features/faq/domain/entities/faq_single_component.dart';

part 'faq_question_model.freezed.dart';
part 'faq_question_model.g.dart';

@freezed
class FaqAnswerItemModel extends FaqAnswerItem with _$FaqAnswerItemModel {
  const factory FaqAnswerItemModel({
    @Default('') String type,
    @Default('') String value,
    @Default(<FaqAnswerItemModel>[]) List<FaqAnswerItemModel> values,
  }) = _FaqAnswerItemModel;

  factory FaqAnswerItemModel.fromJson(Map<String, dynamic> json) =>
      _$FaqAnswerItemModelFromJson(json);
}

@freezed
class FaqSingleComponentModel extends FaqSingleComponent
    with _$FaqSingleComponentModel {
  const factory FaqSingleComponentModel({
    @Default('') String type,
    @Default('') String value,
    @Default(<FaqAnswerItemModel>[]) List<FaqAnswerItemModel> values,
  }) = _FaqSingleComponentModel;

  factory FaqSingleComponentModel.fromJson(Map<String, dynamic> json) =>
      _$FaqSingleComponentModelFromJson(json);
}

@freezed
class FaqListModel extends FaqList with _$FaqListModel {
  const factory FaqListModel({
    @Default('') String type,
    @Default('') String value,
    @Default(<FaqAnswerItemModel>[]) List<FaqAnswerItemModel> values,
  }) = _FaqListModel;

  factory FaqListModel.fromJson(Map<String, dynamic> json) =>
      _$FaqListModelFromJson(json);
}

@freezed
class FaqQuestionModel extends FaqQuestion with _$FaqQuestionModel {
  const factory FaqQuestionModel(
          {@Default('') String group,
          @Default('') String section,
          @Default('') String question,
          @Default(<FaqAnswerItemModel>[]) List<FaqAnswerItemModel> answer}) =
      _FaqQuestionModel;

  factory FaqQuestionModel.fromJson(Map<String, dynamic> json) =>
      _$FaqQuestionModelFromJson(json);
}
