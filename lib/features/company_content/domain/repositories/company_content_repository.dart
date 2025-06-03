import 'package:dartz/dartz.dart';
import 'package:resident_app/core/shared/common/enums/api_enums.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/company_content/domain/entities/company_content.dart';

abstract class CompanyContentRepository {
  Future<Either<MAError, CompanyContent>> get(
    String companyId,
    ContentType contentType,
  );
}
