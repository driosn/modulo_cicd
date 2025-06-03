import 'package:resident_app/features/billing_settings/common/billing_settings_update_params.dart';

abstract class BillingSettingsRemoteDataSource {
  Future<void> update(
    BillingSettingsUpdateParams updateParams,
  );
}
