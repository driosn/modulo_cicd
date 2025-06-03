import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/payment_account/domain/entities/property_payment_settings.dart';

abstract class PropertyPaymentSettingsRepository {
  Future<Either<Failure, PropertyPaymentSettings>> get();
}
