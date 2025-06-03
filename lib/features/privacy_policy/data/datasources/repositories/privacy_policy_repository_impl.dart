import 'package:dartz/dartz.dart';
import 'package:resident_app/core/domain/document.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/privacy_policy/data/datasources/privacy_policy_remote_datasource.dart';
import 'package:resident_app/features/privacy_policy/domain/repositories/privacy_policy_repository.dart';

class PrivacyPolicyRepositoryImpl implements PrivacyPolicyRepository {
  const PrivacyPolicyRepositoryImpl({
    required PrivacyPolicyRemoteDataSource privacyPolicyRemoteDataSource,
  }) : _privacyPolicyRemoteDataSource = privacyPolicyRemoteDataSource;

  final PrivacyPolicyRemoteDataSource _privacyPolicyRemoteDataSource;

  @override
  Future<Either<Failure, Document>> getDocument() async {
    try {
      final document = await _privacyPolicyRemoteDataSource.getDocument();

      return Right(document);
    } catch (e) {
      return Left(Failure(message: 'Unknown Error'));
    }
  }
}
