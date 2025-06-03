import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'package:local_auth/local_auth.dart';
import 'package:resident_app/core/constants/constants.dart';
import 'package:resident_app/core/shared/data/secure_storage.dart';
import 'package:resident_app/features/biometric_sign_in/common/error/ma_biometric_error.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BiometricRepository {
  BiometricRepository({
    required LocalAuthentication localAuth,
    required SharedPreferences sharedPreferences,
    required SecureStorageWrapper secureStorageWrapper,
  })  : _localAuth = localAuth,
        _sharedPreferences = sharedPreferences,
        _secureStorageWrapper = secureStorageWrapper;

  final LocalAuthentication _localAuth;
  final SharedPreferences _sharedPreferences;
  final SecureStorageWrapper _secureStorageWrapper;

  Future<Either<MABiometricError, bool>> authenticateWithBiometrics() async {
    bool isAuthenticated = false;
    try {
      isAuthenticated = await _localAuth.authenticate(
        localizedReason: 'Please authenticate to access this feature',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } on PlatformException catch (e) {
      if (e.code == auth_error.notAvailable) {
        // Handle not available error
        // Probably just passs
        return Left(MABiometricError.notAvailable());
      } else if (e.code == auth_error.passcodeNotSet) {
        // Handle passcode not set error for security
        return Left(MABiometricError.passcodeNotSet());
      } else if (e.code == auth_error.notEnrolled) {
        // Handle not enrolled error
        // redirect to enroll if user decide
        return Left(MABiometricError.notEnrolled());
      } else if (e.code == auth_error.lockedOut) {
        // Handle lockVed out error of too many tries
        return Left(MABiometricError.lockedOut());
      } else {
        // Handle other errors
        return Left(MABiometricError.unexpected());
      }
    }

    return Right(isAuthenticated);
  }

  Future<bool> get canCheckBiometrics => _localAuth.canCheckBiometrics;

  Future<List<BiometricType>> getAvailableBiometrics() {
    return _localAuth.getAvailableBiometrics();
  }

  bool get isBiometricsFirstTime {
    final isFirstTime = _sharedPreferences.getBool(biometricsFirstTimeKey) ?? true;
    return isFirstTime;
  }

  bool get isBiometricAuthEnabled {
    final isEnabled = _sharedPreferences.getBool(biometricAuthenticationEnabledKey) ?? false;
    return isEnabled;
  }

  Future<void> setBiometricsFirstTime(bool value) async {
    await _sharedPreferences.setBool(
      biometricsFirstTimeKey,
      value,
    );
  }

  Future<void> setBiometricAuthenticationEnabled(bool value) async {
    await _sharedPreferences.setBool(
      biometricAuthenticationEnabledKey,
      value,
    );
  }

  Future<void> removeUserName() async {
    await _secureStorageWrapper.removeKey(userNameKey);
  }

  Future<void> removePass() async {
    await _secureStorageWrapper.removeKey(passKey);
  }

  Future<String?> getBiometricUserName() async {
    return await _secureStorageWrapper.getString(userNameKey);
  }

  Future<String?> getBiometricPass() async {
    return await _secureStorageWrapper.getString(passKey);
  }
}
