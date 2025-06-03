import 'package:freezed_annotation/freezed_annotation.dart';

part 'ma_biometric_error.freezed.dart';

@freezed
class MABiometricError with _$MABiometricError {
  const factory MABiometricError.notAvailable({
    @Default('Biometric not available') String message,
  }) = _NotAvailableError;

  const factory MABiometricError.passcodeNotSet({
    @Default('Passcode not set') String message,
  }) = _PasscodeNotSetError;

  const factory MABiometricError.notEnrolled({
    @Default('Passcode not set') String message,
  }) = _NotEnrolledError;

  const factory MABiometricError.lockedOut({
    @Default('Locked out error') String message,
  }) = _LockedOutError;

  const factory MABiometricError.unexpected({
    @Default('Unexpected Error') String message,
  }) = _UnexpectedError;
}
