import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:resident_app/core/flags/feature_flags.dart';

import '../constants/constants.dart';

class FeatureFlagService {

  void initializeFirebase() async {
  //Turning off the sync for debug mode
  if (!kDebugMode) {
    await FirebaseRemoteConfig.instance.fetchAndActivate();
  }
}
  Future<void> initializeAllFlags(List<FeatureFlagDomain> domains) async {
    final defaults = getAllFeatureFlagDefaults(domains);
    await FirebaseRemoteConfig.instance.setDefaults(defaults);

    await FirebaseRemoteConfig.instance.fetchAndActivate();
  }

  Map<String, bool> getAllFeatureFlagDefaults(List<FeatureFlagDomain> domains) {
    final Map<String, bool> defaults = {isEverywareCashPayConfigured:false,deleteMyAccountfeature:false};
    for (var domain in domains) {
      defaults.addAll(domain.overriddenDefaults);
      for (var flag in domain.featureFlags) {
        defaults.putIfAbsent(flag, () => false); 
      }
    }

    return defaults;
  }
}