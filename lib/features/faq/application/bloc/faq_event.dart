part of 'faq_bloc.dart';

@freezed
class FaqEvent with _$FaqEvent {
  const factory FaqEvent.getQuestions() = _GetQuestionsEvent;
  const factory FaqEvent.filterQuestions(String query) = _FilterQuestionsEvent;
}
