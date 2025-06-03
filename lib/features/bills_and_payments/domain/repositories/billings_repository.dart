import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/bills_and_payments/domain/entities/billings.dart';

abstract class BillingsRepository {
  Future<Either<Failure, Billings>> getByCompanyIdResidentId(
    String companyId,
    String residentId,
  );

  Future<Either<Failure, File>> getBillingPDF(
    String billingId,
  );
}
