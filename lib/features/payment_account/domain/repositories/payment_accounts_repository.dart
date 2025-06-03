import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/payment_account/common/payment_account_create_params.dart';
import 'package:resident_app/features/payment_account/common/payment_account_update_params.dart';
import 'package:resident_app/features/payment_account/domain/entities/payment_accounts.dart';

abstract class PaymentAccountsRepository {
  Future<Either<Failure, PaymentAccounts>> getByResidentId(
    String residentId,
  );
  Future<Either<MAError, Empty>> create(
    PaymentAccountsCreateParams createParams,
  );

  Future<Either<MAError, Empty>> update(
    PaymentAccountsUpdateParams updateParams,
  );

  Future<Either<Failure, Empty>> deleteByResidentId(
    String residentId,
  );
}
