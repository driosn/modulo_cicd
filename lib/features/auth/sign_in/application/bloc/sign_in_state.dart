part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState.initial() = _Initial;

  const factory SignInState.loading() = _Loading;

  const factory SignInState.loggedOut() = _LoggedOut;

  const factory SignInState.sessionExpired() = _SessionExpired;

  const factory SignInState.success({
    required User user,
    @Default(true) bool navigateToSummary,
  }) = _Success;

  const factory SignInState.failure(String errorMessage) = _Failure;
  const factory SignInState.biometricsFailure(String errorMessage) = _BiometricsFailure;
}
