part of 'start_registration_bloc.dart';

@freezed
class StartRegistrationEvent with _$StartRegistrationEvent {
  //
  // Setters
  //
  const factory StartRegistrationEvent.setEmail(String email) = _SetEmailEvent;

  //
  // Validators
  //
  const factory StartRegistrationEvent.validateEmail() = _ValidateEmailEvent;
  const factory StartRegistrationEvent.validateForm() = _ValidateFormEvent;
}
