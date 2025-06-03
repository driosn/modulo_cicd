import 'package:resident_app/features/payment_account/data/models/property_payment_settings_model.dart';

abstract class PropertyPaymentSettingsRemoteDataSource {
  Future<PropertyPaymentSettingsModel> get();
}
