import 'package:firebase_remote_config/firebase_remote_config.dart';

abstract class FeatureFlagDomain {
  Map<String, bool> get overriddenDefaults;

  List<String> get featureFlags;
}

extension FeatureFlagExtension on String {
  bool isEnabled() {
    return FirebaseRemoteConfig.instance.getBool(this);
  }
}

Map<String, bool> getAllFeatureFlagDefaults(List<FeatureFlagDomain> domains) {
  final Map<String, bool> defaults = {};

  for (var domain in domains) {
    defaults.addAll(domain.overriddenDefaults);  
    for (var flag in domain.featureFlags) {
      defaults.putIfAbsent(flag, () => false);  
    }
  }
  return defaults;
}