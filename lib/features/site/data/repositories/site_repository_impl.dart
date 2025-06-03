import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/site/data/datasources/site_remote_datasource.dart';
import 'package:resident_app/features/site/domain/repositories/site_repository.dart';
import 'package:resident_app/features/user/user_feature.dart';

class SiteRepositoryImpl implements SiteRepository {
  const SiteRepositoryImpl({
    required SiteRemoteDataSource siteRemoteDataSource,
  }) : _siteRemoteDataSource = siteRemoteDataSource;

  final SiteRemoteDataSource _siteRemoteDataSource;

  @override
  Future<Either<Failure, PrimarySite>> getSiteByResidentId(
      String residentId) async {
    try {
      final primarySite =
          await _siteRemoteDataSource.getSiteByResidentId(residentId);

      return Right(primarySite);
    } catch (e) {
      return Left(Failure(message: 'Unexpected Failure'));
    }
  }
}
