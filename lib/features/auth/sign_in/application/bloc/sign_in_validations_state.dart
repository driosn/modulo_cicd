part of 'sign_in_validations_bloc.dart';

@freezed
class SignInValidationsState with _$SignInValidationsState {
  const factory SignInValidationsState({
    @Default(UsernameInput.pure()) UsernameInput username,
    @Default(LoginPasswordInput.pure()) LoginPasswordInput password,
    @Default(null) String? usernameErrorMesasge,
    @Default(null) String? passwordErrorMessage,
    @Default(false) bool allFieldsAreValid,
  }) = _SignInValidationsState;
}
