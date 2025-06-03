class USState {
  const USState({
    required this.name,
    required this.value,
  });

  final String name;
  final String value;

  factory USState.fromJson(Map<String, String> json) {
    return USState(
      name: json['name'] ?? '',
      value: json['value'] ?? '',
    );
  }
}
