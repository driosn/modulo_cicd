import 'package:formz/formz.dart';

enum NameValidationError {
  empty,
}

class NameInput extends FormzInput<String, NameValidationError> {
  const NameInput.pure() : super.pure('');

  const NameInput.dirty([super.dirty = '']) : super.dirty();

  @override
  NameValidationError? validator(String value) {
    if (value.isEmpty) {
      return NameValidationError.empty;
    }
    return null;
  }
}
