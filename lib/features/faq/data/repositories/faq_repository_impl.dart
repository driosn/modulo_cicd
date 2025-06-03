import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/faq/data/datasources/faq_remote_datasource.dart';
import 'package:resident_app/features/faq/domain/entities/faq_question.dart';
import 'package:resident_app/features/faq/domain/repositories/faq_repository.dart';

class FaqRepositoryImpl implements FaqRepository {
  const FaqRepositoryImpl({
    required FaqRemoteDataSource faqRemoteDataSource,
  }) : _faqRemoteDataSource = faqRemoteDataSource;

  final FaqRemoteDataSource _faqRemoteDataSource;

  @override
  Future<Either<Failure, List<FaqQuestion>>> getQuestions() async {
    try {
      final questions = await _faqRemoteDataSource.getQuestions();
      return Right(questions);
    } catch (e) {
      return Left(Failure(message: 'Unexpected Exception'));
    }
  }
}
