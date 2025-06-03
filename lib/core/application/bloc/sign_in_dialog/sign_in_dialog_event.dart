part of 'sign_in_dialog_bloc.dart';

@freezed
class SignInDialogEvent with _$SignInDialogEvent {
  const factory SignInDialogEvent.setEmail(String email) = _SetEmailEvent;
  const factory SignInDialogEvent.setPassword(String password) =
      _SetPasswordEvent;
  const factory SignInDialogEvent.validateEmail() = _ValidateEmailEvent;
  const factory SignInDialogEvent.validatePassword() = _ValidatePasswordEvent;
  const factory SignInDialogEvent.validateForm() = _ValidateFormEvent;
}
