extension MonthExtensions on int {
  String toOrdinal() {
    if (this == 1 || this == 21 || this == 31) {
      return '${this}st';
    }

    if (this == 2 || this == 22) {
      return '${this}nd';
    }

    if (this == 3 || this == 23) {
      return '${this}rd';
    }

    return '${this}th';
  }
}
