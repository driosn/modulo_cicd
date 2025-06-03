import 'package:resident_app/features/faq/data/models/faq_question_model.dart';

abstract class FaqRemoteDataSource {
  Future<List<FaqQuestionModel>> getQuestions();
}
