import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';

abstract class FaqRepository {
  Future<Either<Failure, List<FaqQuestion>>> getQuestions();
}
