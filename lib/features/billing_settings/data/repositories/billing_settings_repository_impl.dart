import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/billing_settings/common/billing_settings_update_params.dart';
import 'package:resident_app/features/billing_settings/data/datasources/billing_settings_remote_datasource.dart';
import 'package:resident_app/features/billing_settings/domain/repositories/billing_settings_repository.dart';

class BillingSettingsRepositoryImpl implements BillingSettingsRepository {
  const BillingSettingsRepositoryImpl({
    required BillingSettingsRemoteDataSource billingSettingsRemoteDataSource,
  }) : _remoteDataSource = billingSettingsRemoteDataSource;

  final BillingSettingsRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, Empty>> update(
      BillingSettingsUpdateParams updateParams) async {
    try {
      await _remoteDataSource.update(updateParams);

      return Right(Empty());
    } on DioException catch (e) {
      String response = e.response != null
          ? "${e.response?.statusCode} - ${e.response?.statusMessage}"
          : "No response received";
      return Left(
        Failure(
          message:
              "Error DioException - Type: ${e.type.name} - Response: $response",
        ),
      );
    } catch (e) {
      return Left(
        Failure(message: 'Unexpected Exception'),
      );
    }
  }
}
