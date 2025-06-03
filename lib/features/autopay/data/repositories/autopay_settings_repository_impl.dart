import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/autopay/data/datasources/autopay_settings_remote_datasource.dart';
import 'package:resident_app/features/autopay/data/models/autopay_update_settings_model.dart';
import 'package:resident_app/features/autopay/domain/entities/autopay_settings.dart';
import 'package:resident_app/features/autopay/domain/repositories/autopay_settings_repositories.dart';
import 'package:resident_app/features/autopay/domain/repositories/autopay_settings_repository.dart';

class AutoPaySettingsRepositoryImpl implements AutoPaySettingsRepository {
  const AutoPaySettingsRepositoryImpl({
    required AutoPaySettingsRemoteDataSource autopaySettingsRemoteDataSource,
  }) : _autopaySettingsRemoteDataSource = autopaySettingsRemoteDataSource;

  final AutoPaySettingsRemoteDataSource _autopaySettingsRemoteDataSource;

  @override
  Future<Either<MAError, List<AutoPaySettings>>> getAutoPaySettings(
    String residentId,
  ) async {
    try {
      final autopayConfigs =
          await _autopaySettingsRemoteDataSource.getAutoPaySettings(
        residentId,
      );
      return Right(autopayConfigs);
    } catch (e) {
      return Left(
        MAError.unexpected(),
      );
    }
  }

  @override
  Future<Either<MAError, void>> updateAutoPaySettings(
      AutoPayUpdateSettingsModel autopaySettings) async {
    try {
      final autopayConfig =
          await _autopaySettingsRemoteDataSource.updateAutoPaySettings(
        autopaySettings,
      );
      return Right(autopayConfig);
    } catch (e) {
      return Left(
        MAError.unexpected(),
      );
    }
  }
}
