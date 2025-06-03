import 'package:formz/formz.dart';

enum PhoneValidationError {
  empty,
  incorrectLength,
}

class Phone extends FormzInput<String, PhoneValidationError> {
  const Phone.pure() : super.pure('');
  const Phone.dirty([super.value = '']) : super.dirty();

  @override
  PhoneValidationError? validator(String value) {
    const int requiredNumbers = 14;

    if (value.isEmpty) {
      return PhoneValidationError.empty;
    }

    if (value.length < requiredNumbers) {
      return PhoneValidationError.incorrectLength;
    }

    return null;
  }
}
