import 'package:formz/formz.dart';

enum RoutingNumberValidationError {
  empty,
  incorrectLength,
}

class RoutingNumberInput
    extends FormzInput<String, RoutingNumberValidationError> {
  const RoutingNumberInput.pure() : super.pure('');

  const RoutingNumberInput.dirty([super.value = '']) : super.dirty();

  @override
  RoutingNumberValidationError? validator(String value) {
    const int requiredNumbers = 9;

    if (value.isEmpty) {
      return RoutingNumberValidationError.empty;
    }

    if (value.length < requiredNumbers) {
      return RoutingNumberValidationError.incorrectLength;
    }

    return null;
  }
}
