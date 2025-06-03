import 'package:dartz/dartz.dart';
import 'package:resident_app/core/domain/document.dart';
import 'package:resident_app/core/shared/failure/failure.dart';

abstract class PrivacyPolicyRepository {
  Future<Either<Failure, Document>> getDocument();
}
