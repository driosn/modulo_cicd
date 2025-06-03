import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/auth/log_in_help/domain/entities/log_in_help_question.dart';

part 'log_in_help_question_model.freezed.dart';
part 'log_in_help_question_model.g.dart';

@freezed
class LogInHelpQuestionModel extends LogInHelpQuestion with _$LogInHelpQuestionModel {
  const factory LogInHelpQuestionModel({
    @Default('') String question,
    @Default('') String answer,
  }) = _LogInHelpQuestionModel;

  factory LogInHelpQuestionModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LogInHelpQuestionModelFromJson(json);
}
