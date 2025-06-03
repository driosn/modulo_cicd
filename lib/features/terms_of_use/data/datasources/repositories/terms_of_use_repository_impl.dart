import 'package:dartz/dartz.dart';
import 'package:resident_app/core/domain/document.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/terms_of_use/data/datasources/terms_of_use_remote_datasource.dart';
import 'package:resident_app/features/terms_of_use/domain/repositories/terms_of_use_repository.dart';

class TermsOfUseRepositoryImpl implements TermsOfUseRepository {
  const TermsOfUseRepositoryImpl({
    required TermsOfUseRemoteDataSource termsOfUseRemoteDataSource,
  }) : _termsOfUseRemoteDataSource = termsOfUseRemoteDataSource;

  final TermsOfUseRemoteDataSource _termsOfUseRemoteDataSource;

  @override
  Future<Either<Failure, Document>> getDocument() async {
    try {
      final document = await _termsOfUseRemoteDataSource.getDocument();

      return Right(document);
    } catch (e) {
      return Left(Failure(message: 'Unknown Error'));
    }
  }
}
