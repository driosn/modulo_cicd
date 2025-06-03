import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';

abstract class PaymentsRepository {
  Future<Either<Failure, Payments>> getByPropertyId(String propertyId);
}
