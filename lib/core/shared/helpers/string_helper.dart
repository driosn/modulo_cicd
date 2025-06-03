import 'package:intl/intl.dart';

extension StringHelper on String {
  String capitalize() {
    if (isEmpty) {
      return this;
    }

    List<String> words = split(' ');
    List<String> capitalizedWords = words.map((word) {
      if (word.isEmpty) {
        return word;
      }
      return word.substring(0, 1).toUpperCase() + word.substring(1).toLowerCase();
    }).toList();

    return capitalizedWords.join(' ');
  }

  String removeCapitalize() {
    if (isEmpty) return this;
    return substring(0, 1).toUpperCase() + substring(1).toLowerCase();
  }

  String obscurizer(int allowedCharactersLength) {
    if (length <= allowedCharactersLength) {
      return this;
    }

    final allowedCharacters = substring(length - allowedCharactersLength);
    const obscureChar = '•';
    String obscurePart = '';

    for (int i = 0; i < length - allowedCharactersLength; i++) {
      obscurePart += obscureChar;
    }

    return '$obscurePart$allowedCharacters';
  }

  String maskedAccountNumber() {
    return length > 3 ? "••••••${substring(length - 3)}" : this;
  }

  String formatMobileNumber() {
    final RegExp regExp = RegExp(r'^\d{10}$');
    return regExp.hasMatch(this) ? '(${substring(0, 3)}) ${substring(3, 6)}-${substring(6, 10)}' : this;
  }

  String toFormattedDate() {
    return DateFormat('MMM dd, yyyy')
        .format(
          DateTime.parse(this),
        )
        .toUpperCase();
  }
}
