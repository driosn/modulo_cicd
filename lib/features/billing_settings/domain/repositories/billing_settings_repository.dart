import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/empty.dart';
import 'package:resident_app/core/shared/failure/failure.dart';
import 'package:resident_app/features/billing_settings/common/billing_settings_update_params.dart';

abstract class BillingSettingsRepository {
  Future<Either<Failure, Empty>> update(
      BillingSettingsUpdateParams updateParams);
}
