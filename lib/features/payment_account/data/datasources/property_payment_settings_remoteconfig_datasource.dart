import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/widgets.dart';
import 'package:resident_app/core/shared/globals/globals.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/payment_account/data/datasources/property_payment_settings_remote_datasource.dart';
import 'package:resident_app/features/payment_account/data/dummy_data/property_payment_settings_dummy_data.dart';
import 'package:resident_app/features/payment_account/data/models/property_payment_settings_model.dart';

class PropertyPaymentSettingsRemoteConfigDataSource
    implements PropertyPaymentSettingsRemoteDataSource {
  @override
  Future<PropertyPaymentSettingsModel> get() async {
    try {
      if (userRemoteConfig == "") {
        final responseData = propertyPaymentSettingsDummyData;
        return PropertyPaymentSettingsModel.fromJson(responseData);
      } else {
        WidgetsFlutterBinding.ensureInitialized();
        final remoteConfig = locator<FirebaseRemoteConfig>();
        await remoteConfig.setConfigSettings(RemoteConfigSettings(
          fetchTimeout: const Duration(minutes: 1),
          minimumFetchInterval: const Duration(seconds: 1),
        ));
        await remoteConfig.fetchAndActivate();

        //Retrieving from firebase remote config a json with the property payment settings
        var result = remoteConfig
            .getString('property_payment_settings_$userRemoteConfig');
        Map<String, dynamic> jsonMap = json.decode(result);
        PropertyPaymentSettingsModel propertyPaymentSettingsModel =
            PropertyPaymentSettingsModel.fromJson(jsonMap);

        return propertyPaymentSettingsModel;
      }
    } catch (e) {
      rethrow;
    }
  }
}
