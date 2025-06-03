import 'package:resident_app/core/shared/config/app_datasources.dart';

class SourceInfo {
  const SourceInfo({
    this.source = AppDataSources.residentPortalMobileAPI,
  });

  final AppDataSources source;

  bool get isRemoteConfig => source == AppDataSources.firebaseRemoteConfig;
  bool get isRpmAPI => source == AppDataSources.residentPortalMobileAPI;
}
