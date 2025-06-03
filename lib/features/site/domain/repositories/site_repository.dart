import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/user/user_feature.dart';

abstract class SiteRepository {
  Future<Either<Failure, PrimarySite>> getSiteByResidentId(String residentId);
}
