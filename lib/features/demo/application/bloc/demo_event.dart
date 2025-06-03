part of 'demo_bloc.dart';

@freezed
class DemoEvent with _$DemoEvent {
  //
  // Setters
  //
  const factory DemoEvent.setEmail(String email) = _SetEmailEvent;
  const factory DemoEvent.setPassword(String password) = _SetPasswordEvent;
  const factory DemoEvent.setPhone(String phone) = _SetPhoneEvent;
  //
  // Validators
  //
  const factory DemoEvent.validateEmail() = _ValidateEmailEvent;
  const factory DemoEvent.validatePassword() = _ValidatePasswordEvent;
  const factory DemoEvent.validatePhone() = _ValidatePhoneEvent;
}
