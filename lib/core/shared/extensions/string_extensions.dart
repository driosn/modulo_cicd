extension StringExtensions on String {
  String phoneFormatter({
    (int, int) initialIndex = (0, 3),
    (int, int) middleIndex = (3, 6),
  }) {
    String result = '';

    if (length > initialIndex.$1) {
      final String initial = substring(
        initialIndex.$1,
        initialIndex.$2,
      );
      result += '($initial)';
      if (length > middleIndex.$2) {
        final String middle = substring(
          middleIndex.$1,
          middleIndex.$2,
        );
        result += ' $middle-';

        result += substring(middleIndex.$2);
      } else {
        result += substring(initialIndex.$2);
      }
    }

    return result;
  }

  String removePhoneFormat() {
    String replaced = this;
    replaced = replaced.replaceAll(' ', '');
    replaced = replaced.replaceAll('(', '');
    replaced = replaced.replaceAll(')', '');
    replaced = replaced.replaceAll('-', '');
    return replaced;
  }

  String toPascalCase() {
    if (isEmpty) {
      return this;
    }

    List<String> words = split(RegExp(r'\s+')) // Split by whitespace
        .map((word) => word.trim()) // Trim any extra whitespace around words
        .where((word) => word.isNotEmpty) // Remove any empty words
        .toList();

    List<String> pascalCaseWords = words.map((word) {
      if (word.isNotEmpty) {
        return word[0].toUpperCase() + word.substring(1).toLowerCase();
      }
      return '';
    }).toList();

    return pascalCaseWords.join(' ');
  }
}
