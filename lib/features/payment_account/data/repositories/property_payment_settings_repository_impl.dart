import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/payment_account/data/datasources/property_payment_settings_remote_datasource.dart';
import 'package:resident_app/features/payment_account/domain/entities/property_payment_settings.dart';
import 'package:resident_app/features/payment_account/domain/repositories/property_payment_settings_repository.dart';

class PropertyPaymentSettingsRepositoryImpl
    implements PropertyPaymentSettingsRepository {
  const PropertyPaymentSettingsRepositoryImpl({
    required PropertyPaymentSettingsRemoteDataSource
        propertyPaymentSettingsRemoteDataSource,
  }) : _propertyPaymentSettingsRemoteDataSource =
            propertyPaymentSettingsRemoteDataSource;

  final PropertyPaymentSettingsRemoteDataSource
      _propertyPaymentSettingsRemoteDataSource;

  @override
  Future<Either<Failure, PropertyPaymentSettings>> get() async {
    try {
      final propertyPaymentSettings =
          await _propertyPaymentSettingsRemoteDataSource.get();
      return Right(propertyPaymentSettings);
    } catch (e) {
      return Left(
        Failure(message: 'Unexpected exception'),
      );
    }
  }
}
