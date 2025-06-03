part of 'biometric_authentication_bloc.dart';

@freezed
class BiometricAuthenticationState with _$BiometricAuthenticationState{
  const factory BiometricAuthenticationState({
    @Default('') String authenticationType,
    @Default(false) bool isEnabled,
    @Default(false) bool haveBiometricAuthenticationAvaliable,
    @Default(true) bool biometricsFirstTime,
    @Default(false) bool haveAcceptedTermsAndConditions,
    @Default(false) bool validAuthenticaton
  }) = _BiometricAuthenticationState;
}
