import 'package:formz/formz.dart';

enum CurrentPasswordValidationError {
  empty,
}

class CurrentPasswordInput
    extends FormzInput<String, CurrentPasswordValidationError> {
  const CurrentPasswordInput.pure() : super.pure('');
  const CurrentPasswordInput.dirty([super.value = '']) : super.dirty();

  @override
  CurrentPasswordValidationError? validator(String value) {
    if (value.isEmpty) {
      return CurrentPasswordValidationError.empty;
    }

    return null;
  }
}
