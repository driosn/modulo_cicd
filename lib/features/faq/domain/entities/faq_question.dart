import 'package:resident_app/features/faq/domain/entities/faq_answer_item.dart';

class FaqQuestion {
  const FaqQuestion({
    required this.group,
    required this.section,
    required this.question,
    required this.answer,
  });

  final String group;
  final String section;
  final String question;
  final List<FaqAnswerItem> answer;
}
