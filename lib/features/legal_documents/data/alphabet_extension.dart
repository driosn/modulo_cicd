extension AlphabetExtension on int {
  /// Converts an integer to a corresponding lowercase alphabet letter (0 -> 'a', 1 -> 'b', ..., 25 -> 'z').
  /// If the number is out of range, it returns an empty string.
  String toAlphabetLetter() {
    if (this >= 0 && this < 26) {
      return String.fromCharCode(97 + this);
    }
    return ''; // Handle cases where the number is out of range
  }
}
