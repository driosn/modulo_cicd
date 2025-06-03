part of 'demo_bloc.dart';

@freezed
class DemoState with _$DemoState {
  const factory DemoState({
    @Default(EmailInput.pure()) EmailInput email,
    @Default(PasswordInput.pure()) PasswordInput password,
    @Default(PhoneInput.pure()) PhoneInput phone,
    @Default(null) String? emailErrorMessage,
    @Default(null) String? passwordErrorMessage,
    @Default(null) String? phoneErrorMessage,
  }) = _DemoState;
}
