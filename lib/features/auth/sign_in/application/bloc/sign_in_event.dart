part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.signIn({
    required String username,
    required String password,
  }) = _SignInEvent;
  const factory SignInEvent.signInWithBiometrics(
  ) = _SignInWithBiometricsEvent;
  const factory SignInEvent.signOut(
  ) = _SignOutEvent;
  const factory SignInEvent.signedOut(
  ) = _SignedOutEvent;
  const factory SignInEvent.sessionExpired(
  ) = _SessionExpiredEvent;
}
