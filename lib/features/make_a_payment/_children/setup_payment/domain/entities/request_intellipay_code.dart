class RequestIntelliPayCode {
  const RequestIntelliPayCode({
    required this.intelliPayJavascriptCode,
    required this.passThrough,
    required this.token,
  });

  final String intelliPayJavascriptCode;
  final String passThrough;
  final String token;
}
