import 'package:resident_app/features/autopay/data/models/autopay_settings_model.dart';
import 'package:resident_app/features/autopay/data/models/autopay_update_settings_model.dart';

abstract class AutoPaySettingsRemoteDataSource {
  Future<List<AutoPaySettingsModel>> getAutoPaySettings(
    String residentId,
  );

  Future<void> updateAutoPaySettings(
    AutoPayUpdateSettingsModel autopaySettings,
  );
}
