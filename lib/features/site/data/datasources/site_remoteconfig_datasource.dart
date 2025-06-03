import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/widgets.dart';
import 'package:resident_app/features/site/data/datasources/site_remote_datasource.dart';
import 'package:resident_app/features/user/data/models/user_model.dart';

class SiteRemoteConfigDataSource implements SiteRemoteDataSource {
  const SiteRemoteConfigDataSource({required FirebaseRemoteConfig remoteConfig})
      : _remoteConfig = remoteConfig;

  final FirebaseRemoteConfig _remoteConfig;

  @override
  Future<PrimarySiteModel> getSiteByResidentId(String residentId) async {
    try {
      await _remoteConfig.fetchAndActivate();
      final result = _remoteConfig.getString('get_site_by_resident_id');
      final Map<String, dynamic> jsonMap = json.decode(result);
      return PrimarySiteModel.fromJson(jsonMap[residentId]);
    } catch (e) {
      debugPrint(e.toString());
      rethrow;
    }
  }
}
