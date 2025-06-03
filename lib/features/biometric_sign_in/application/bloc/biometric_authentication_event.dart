part of 'biometric_authentication_bloc.dart';

@freezed
class BiometricAuthenticationEvent with _$BiometricAuthenticationEvent {
  const factory BiometricAuthenticationEvent.setAuthenticationType() = _SetAuthenticationType;
  const factory BiometricAuthenticationEvent.authenticate() = _Authenticate;
  const factory BiometricAuthenticationEvent.enableBiometricAuthentication() = _EnableBiometricAuthentication;

  const factory BiometricAuthenticationEvent.disableBiometricAuthentication() = _DisableBiometricAuthentication;
  const factory BiometricAuthenticationEvent.enableBiometricAuthenticationWithoutVerification() = _EnableBiometricAuthenticationWithoutVerificationEvent;
  const factory BiometricAuthenticationEvent.disableBiometricAuthenticationWithoutVerification() = _DisableBiometricAuthenticationWithoutVerificationEvent;
  const factory BiometricAuthenticationEvent.acceptedTermsAndContions(bool accepted) = _AcceptedTermsAndContions;
  const factory BiometricAuthenticationEvent.authenticationFailed() = _AuthenticationFailed;
  const factory BiometricAuthenticationEvent.resetBiometricAuthentication() = _ResetBiometricAuthentication;
}
