import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/language_selection/common/language_preference_update_params.dart';
import 'package:resident_app/features/language_selection/data/datasources/language_preference_remote_datasource.dart';
import 'package:resident_app/features/language_selection/domain/repositories/language_preference_repository.dart';

class LanguagePreferenceRepositoryImpl implements LanguagePreferenceRepository {
  const LanguagePreferenceRepositoryImpl({
    required LanguagePreferenceRemoteDataSource
        languagePreferenceRemoteDataSource,
  }) : _remoteDataSource = languagePreferenceRemoteDataSource;

  final LanguagePreferenceRemoteDataSource _remoteDataSource;

  @override
  Future<Either<MAError, Empty>> update(
      LanguagePreferenceUpdateParams updateParams) async {
    try {
      await _remoteDataSource.update(updateParams);

      return Right(Empty());
    } on DioException catch (e) {
      return const Left(
        MAError.internalServerError(),
      );
    } catch (e) {
      return const Left(
        MAError.unexpected(),
      );
    }
  }
}
