import 'package:resident_app/features/faq/domain/entities/faq_answer_item.dart';

class FaqSingleComponent extends FaqAnswerItem {
  const FaqSingleComponent({
    required super.type,
    required super.value,
  }) : super(
          values: const <FaqAnswerItem>[],
        );
}
