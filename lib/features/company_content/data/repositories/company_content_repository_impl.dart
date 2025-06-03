import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/company_content/data/datasources/company_content_remote_datasource.dart';
import 'package:resident_app/features/company_content/domain/entities/company_content.dart';
import 'package:resident_app/features/company_content/domain/repositories/company_content_repository.dart';

class CompanyContentRepositoryImpl implements CompanyContentRepository {
  const CompanyContentRepositoryImpl({
    required CompanyContentRemoteDataSource companyContentRemoteDataSource,
  }) : _companyContentRemoteDataSource = companyContentRemoteDataSource;

  final CompanyContentRemoteDataSource _companyContentRemoteDataSource;

  @override
  Future<Either<MAError, CompanyContent>> get(
    String companyId,
    ContentType contentType,
  ) async {
    try {
      final result = await _companyContentRemoteDataSource.get(companyId, contentType);

      var companyContent = CompanyContent(
        contentType: result.contentType,
        content: result.content);

      return Right(companyContent);
    } catch (e) {
      return Left(MAError.unexpected(message: 'An error occurred. Please try again later.'));
    }
  }
}
