import 'package:dartz/dartz.dart';
import 'package:resident_app/core/domain/document.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/legal_documents/data/datasources/legal_documents_remote_datasource.dart';
import 'package:resident_app/features/legal_documents/domain/repositories/legal_documents_repository.dart';

class LegalDocumentsRepositoryImpl implements LegalDocumentsRepository {
  const LegalDocumentsRepositoryImpl({
    required LegalDocumentsRemoteDataSource legalDocumentsRemoteDataSource,
  }) : _legalDocumentsRemoteDataSource = legalDocumentsRemoteDataSource;

  final LegalDocumentsRemoteDataSource _legalDocumentsRemoteDataSource;

  @override
  Future<Either<Failure, Document>> getDocument() async {
    try {
      final document = await _legalDocumentsRemoteDataSource.getDocument();

      return Right(document);
    } catch (e) {
      return Left(Failure(message: 'Unknown Error'));
    }
  }
}
