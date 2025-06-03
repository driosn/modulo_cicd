import 'package:dartz/dartz.dart';
import 'package:resident_app/core/domain/document.dart';
import 'package:resident_app/core/shared/failure/failure.dart';

abstract class LegalDocumentsRepository {
  Future<Either<Failure, Document>> getDocument();
}
