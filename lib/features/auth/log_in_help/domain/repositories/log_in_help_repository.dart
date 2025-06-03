import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/auth/log_in_help/domain/entities/log_in_help_question.dart';

abstract class LogInHelpRepository {
  Future<Either<MAError, List<LogInHelpQuestion>>> getQuestions();
}
