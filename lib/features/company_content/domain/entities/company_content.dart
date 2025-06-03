import 'package:resident_app/core/shared/common/enums/api_enums.dart';

class CompanyContent {
  const CompanyContent({
    required this.contentType,
    required this.content,
  });

  final ContentType contentType;
  final String content;
}
