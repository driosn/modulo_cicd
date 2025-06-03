import 'package:formz/formz.dart';

enum TransitNumberValidationError {
  empty,
  incorrectLength,
}

class TransitNumberInput
    extends FormzInput<String, TransitNumberValidationError> {
  const TransitNumberInput.pure() : super.pure('');

  const TransitNumberInput.dirty([super.value = '']) : super.dirty();

  @override
  TransitNumberValidationError? validator(String value) {
    const int requiredNumbers = 5;

    if (value.isEmpty) {
      return TransitNumberValidationError.empty;
    }

    if (value.length < requiredNumbers) {
      return TransitNumberValidationError.incorrectLength;
    }

    return null;
  }
}
