import 'package:resident_app/features/payment_account/data/datasources/property_payment_settings_remote_datasource.dart';
import 'package:resident_app/features/payment_account/data/dummy_data/property_payment_settings_dummy_data.dart';
import 'package:resident_app/features/payment_account/data/models/property_payment_settings_model.dart';

class PropertyPaymentSettingsAPIDataSource
    implements PropertyPaymentSettingsRemoteDataSource {
  @override
  Future<PropertyPaymentSettingsModel> get() async {
    try {
      final responseData = propertyPaymentSettingsDummyData;
      return PropertyPaymentSettingsModel.fromJson(responseData);
    } catch (e) {
      rethrow;
    }
  }
}
