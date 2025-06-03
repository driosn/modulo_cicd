part of 'sign_in_validations_bloc.dart';

@freezed
class SignInValidationsEvent with _$SignInValidationsEvent {
  const factory SignInValidationsEvent.setUsername(String username) =
      _SetUsernameEvent;

  const factory SignInValidationsEvent.setPassword(String password) =
      _SetPasswordEvent;

  const factory SignInValidationsEvent.validateUsername() =
      _ValidateUsernameEvent;

  const factory SignInValidationsEvent.validatePassword() =
      _ValidatePasswordEvent;

  const factory SignInValidationsEvent.validateAll() = _ValidateAllEvent;
}
