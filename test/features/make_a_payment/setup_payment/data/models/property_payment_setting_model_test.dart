import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/data/models/property_payment_setting_model.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/domain/entities/property_payment_setting.dart';

void main() {
  group(
    'Property Payment Setting Model fromJson',
    () {
      late File jsonFile;
      late Map<String, dynamic> json;

      setUp(
        () async {
          jsonFile = File('test_resources/property_payment_setting_model.json');
          json = jsonDecode(await jsonFile.readAsString());
        },
      );

      test(
        'Should return a valid PropertyPaymentSettingModel instance from a valid json',
        () {
          final model = PropertyPaymentSettingModel.fromJson(json);

          expect(model, isA<PropertyPaymentSettingModel>());
        },
      );

      test(
        'Instance of PropertyPaymentSettingModel should be PropertyPaymentSetting type ',
        () {
          final model = PropertyPaymentSettingModel.fromJson(json);

          expect(model, isA<PropertyPaymentSetting>());
        },
      );
    },
  );
}
