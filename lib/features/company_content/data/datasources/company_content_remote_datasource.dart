import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/features/company_content/data/models/company_content_model.dart';

abstract class CompanyContentRemoteDataSource {
  Future<CompanyContentModel> get(
    String companyId,
    ContentType contentType,
  );
}
