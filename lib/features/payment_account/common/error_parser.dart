import 'dart:convert';

class ErrorParser {
  String extractErrorMessage(dynamic data) {
    if (data == null || data.toString().isEmpty) {
      return 'Unexpected exception';
    }

    try {
      final jsonString =
          data.replaceFirst('Error:', '').trim().replaceAll(RegExp(r',$'), '');
      final Map<String, dynamic> jsonData = jsonDecode(jsonString);
      return jsonData['errorDetails']['message'] ?? 'Unexpected exception';
    } catch (e) {
      return 'Error parsing response';
    }
  }
}
