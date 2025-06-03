import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:resident_app/core/data/models/models.dart';

class SecureStorageWrapper {
  const SecureStorageWrapper({
    required FlutterSecureStorage storage,
  }) : _storage = storage;

  final FlutterSecureStorage _storage;

  Future<Language?> getMyValue(String key) async {
    final result = await _storage.read(key: key);

    if (result == null || result == "null") {
      return null;
    }
    return Language.fromString(result);
  }

  Future<String?> getString(String key) async {
    return await _storage.read(key: key);
  }

  Future<void> setKeyValue<T>(String key, String value) async {
    await _storage.write(key: key, value: value);
  }

  Future<bool> removeKey(String key) async {
    try {
      await _storage.delete(key: key);
      return true;
    } catch (e) {
      return false;
    }
  }
}
