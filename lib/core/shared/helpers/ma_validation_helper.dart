enum PasswordError { charactersLong, atLeastNumber, atLeastSymbol, isRequired }

class MAValidationHelper {
  String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter email address';
    }

    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);

    return !regex.hasMatch(value) ? 'Incorrect format' : null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a password';
    }

    const int passwordMinCharacters = 8;
    const int passwordMaxCharacters = 64;

    if (value.length < passwordMinCharacters) {
      return 'Too short';
    }

    if (value.length > passwordMaxCharacters) {
      return 'Too long';
    }

    const atLeastOneNumberPattern = r'^.*[0-9].*$';
    const atLeastOneSymbolPattern = r'^.*[!@#\$&*~%^*()+=].*';
    final numericRegex = RegExp(atLeastOneNumberPattern);
    final numericSymbol = RegExp(atLeastOneSymbolPattern);

    return !numericRegex.hasMatch(value)
        ? 'Missing a number'
        : !numericSymbol.hasMatch(value)
            ? 'Missing a symbol'
            : null;
  }

  List<PasswordError> validateAllPassword(String? value) {
    List<PasswordError> result = [];
    if (value == null || value.isEmpty) {
      result.add(PasswordError.isRequired);
      return result;
    }

    const int passwordMinCharacters = 8;
    const int passwordMaxCharacters = 64;

    if (value.length < passwordMinCharacters ||
        value.length > passwordMaxCharacters) {
      result.add(PasswordError.charactersLong);
    }
    const atLeastOneNumberPattern = r'^.*[0-9].*$';
    const atLeastOneSymbolPattern = r'^.*[!@#\$&*~%^*()+=].*';
    final numericRegex = RegExp(atLeastOneNumberPattern);
    final numericSymbol = RegExp(atLeastOneSymbolPattern);

    if (!numericRegex.hasMatch(value)) {
      result.add(PasswordError.atLeastNumber);
    }

    if (!numericSymbol.hasMatch(value)) {
      result.add(PasswordError.atLeastSymbol);
    }
    return result;
  }

  String? validatePhoneNumber(String? value) {
    const int numbers = 14;
    if (value == null || value.isEmpty || value.length < numbers) {
      return 'Incomplete phone number';
    }

    return null;
  }
}
