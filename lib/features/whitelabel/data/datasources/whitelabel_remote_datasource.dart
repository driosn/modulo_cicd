import 'package:resident_app/features/whitelabel/data/models/whitelabel_model.dart';

abstract class WhitelabelRemoteDataSource {
  Future<WhitelabelModel?> getByCorePropertyId(int corePropertyId);
  Future<WhitelabelModel?> getByCoreCompanyId(int coreCompanyId);
}
