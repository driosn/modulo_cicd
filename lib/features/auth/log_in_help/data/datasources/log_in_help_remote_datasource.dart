import 'package:resident_app/features/auth/log_in_help/data/models/log_in_help_question_model.dart';

abstract class LogInHelpRemoteDatasource {
  Future<List<LogInHelpQuestionModel>> getQuestions();
}
