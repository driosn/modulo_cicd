import 'package:formz/formz.dart';

enum PostalCodeValidationError {
  empty,
  incomplete,
}

class PostalCodeInput extends FormzInput<String, PostalCodeValidationError> {
  const PostalCodeInput.pure() : super.pure('');
  const PostalCodeInput.dirty([super.dirty = '']) : super.dirty();

  @override
  PostalCodeValidationError? validator(String value) {
    const int postalCodeLength = 5;

    if (value.isEmpty) {
      return PostalCodeValidationError.empty;
    }

    if (value.length < postalCodeLength) {
      return PostalCodeValidationError.incomplete;
    }

    return null;
  }
}
