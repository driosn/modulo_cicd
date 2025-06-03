import 'package:resident_app/features/payment_account/common/payment_account_create_params.dart';
import 'package:resident_app/features/payment_account/common/payment_account_update_params.dart';
import 'package:resident_app/features/payment_account/data/models/payment_accounts_model.dart';

abstract class PaymentAccountsRemoteDataSource {
  Future<PaymentAccountsModel> getByResidentId(
    String residentId,
  );
  Future<void> create(
    PaymentAccountsCreateParams createParams,
  );

  Future<void> update(
    PaymentAccountsUpdateParams updateParams,
  );

  Future<void> deleteByResidentId(
    String residentId,
  );
}
