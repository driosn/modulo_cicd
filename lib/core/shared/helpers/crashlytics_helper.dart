import 'package:firebase_crashlytics/firebase_crashlytics.dart';

// TODO: REFACTOR CRASHLYTICS

class CrashlyticsHelper {
  static const _routeNameKey = 'Navigation.RouteName';
  static const _previousRouteNameKey = 'Navigation.PreviousRouteName';
  static const _companyIdKey = 'User.CompanyId';
  static const _propertyIdKey = 'User.PropertyId';

  void setUser(String userId) {
    FirebaseCrashlytics.instance.setUserIdentifier(userId);
  }

  void setKeys({
    String? routeName,
    String? previousRouteName,
    String? companyId,
    String? propertyId,
  }) {
    _setCustomKeys({
      _routeNameKey: routeName,
      _previousRouteNameKey: previousRouteName,
      _companyIdKey: companyId,
      _propertyIdKey: propertyId,
    });
  }

  void cleanKeysAndUser() {
    FirebaseCrashlytics.instance.setUserIdentifier("");
    _setCustomKeys({
      _routeNameKey: '',
      _previousRouteNameKey: '',
      _companyIdKey: '',
      _propertyIdKey: '',
    });
  }

  void recordError({
    required String recordMessage,
    required String recordReason,
  }) {
    try {
      throw Exception(recordMessage);
    } catch (error, stackTrace) {
      FirebaseCrashlytics.instance.recordError(
        error,
        stackTrace,
        reason: recordReason,
        fatal: true,
      );
    }
  }

  void _setCustomKeys(Map<String, dynamic> keys) {
    keys.forEach((key, value) {
      if (value != null) {
        FirebaseCrashlytics.instance.setCustomKey(key, value);
      }
    });
  }
}
