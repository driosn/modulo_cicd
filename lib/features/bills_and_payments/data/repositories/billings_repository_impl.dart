import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/core/shared/helpers/file_converter.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/billings_remote_datasource.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';
import 'package:resident_app/features/bills_and_payments/domain/repositories/billings_repository.dart';

class BillingsRepositoryImpl implements BillingsRepository {
  const BillingsRepositoryImpl({
    required BillingsRemoteDataSource billingsRemoteDataSource,
  }) : _billingsRemoteDataSource = billingsRemoteDataSource;

  final BillingsRemoteDataSource _billingsRemoteDataSource;

  @override
  Future<Either<Failure, Billings>> getByCompanyIdResidentId(
    String companyId,
    String residentId,
  ) async {
    try {
      final billings = await _billingsRemoteDataSource.getByCompanyIdResidentId(
        companyId,
        residentId,
      );
      return Right(billings);
    } catch (e) {
      return Left(
        Failure(message: 'Unexpected exception'),
      );
    }
  }

  @override
  Future<Either<Failure, File>> getBillingPDF(String billingId) async {
    try {
      final FileConverter fileConverter = FileConverter();
      final bytes = await _billingsRemoteDataSource.getBillingPDF(billingId);

      File billingPDF = await fileConverter.convertToFile(bytes);

      return Right(billingPDF);
    } catch (e) {
      return Left(
        Failure(message: 'Unexpected exception'),
      );
    }
  }
}
