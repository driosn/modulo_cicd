import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:resident_app/features/user/data/datasources/user_remote_datasource.dart';
import 'package:resident_app/features/user/data/models/user_models.dart';

class UserRemoteConfigDataSource implements UserRemoteDataSource {
  const UserRemoteConfigDataSource({
    required FirebaseRemoteConfig remoteConfig,
  }) : _remoteConfig = remoteConfig;

  final FirebaseRemoteConfig _remoteConfig;

  @override
  Future<UserModel> get() async {
    try {
      await _remoteConfig.fetchAndActivate();

      var result = _remoteConfig.getString('');
      Map<String, dynamic> jsonMap = json.decode(result);
      UserModel userModel = UserModel.fromJson(jsonMap);

      return userModel;
    } catch (e) {
      rethrow;
    }
  }
}
