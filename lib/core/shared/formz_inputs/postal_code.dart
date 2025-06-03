import 'package:formz/formz.dart';

enum PostalCodeValidationError {
  empty,
  incomplete,
}

class PostalCode extends FormzInput<String, PostalCodeValidationError> {
  const PostalCode.pure() : super.pure('');
  const PostalCode.dirty([super.dirty = '']) : super.dirty();

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
