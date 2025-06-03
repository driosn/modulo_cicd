import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/payments_remote_datasource.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/payments.dart';
import 'package:resident_app/features/bills_and_payments/domain/repositories/payments_repository.dart';

class PaymentsRepositoryImpl implements PaymentsRepository {
  const PaymentsRepositoryImpl({
    required PaymentsRemoteDataSource paymentsRemoteDataSource,
  }) : _paymentsRemoteDataSource = paymentsRemoteDataSource;

  final PaymentsRemoteDataSource _paymentsRemoteDataSource;

  @override
  Future<Either<Failure, Payments>> getByPropertyId(String propertyId) async {
    try {
      final payments =
          await _paymentsRemoteDataSource.getByPropertyId(propertyId);
      return Right(payments);
    } catch (e) {
      return Left(
        Failure(message: 'Unexpected exception'),
      );
    }
  }
}
