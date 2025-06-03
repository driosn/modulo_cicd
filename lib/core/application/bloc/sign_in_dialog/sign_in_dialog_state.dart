part of 'sign_in_dialog_bloc.dart';

@freezed
class SignInDialogState with _$SignInDialogState {
  const factory SignInDialogState({
    @Default(EmailInput.pure()) EmailInput email,
    @Default(null) String? emailErrorMessage,
    @Default(PasswordInput.pure()) PasswordInput password,
    @Default(null) String? passwordErrorMessage,
    @Default(false) bool isAllFormValid,
  }) = _SignInDialogState;
}
