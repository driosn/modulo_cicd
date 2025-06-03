part of 'start_registration_bloc.dart';

@freezed
class StartRegistrationState with _$StartRegistrationState {
  const factory StartRegistrationState({
    @Default(EmailInput.pure()) EmailInput email,
    @Default(null) String? emailErrorMessage,
    @Default(false) bool isFormValid,
  }) = _StartRegistrationState;
}
