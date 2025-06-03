import 'package:resident_app/features/user/user_feature.dart';

abstract class SiteRemoteDataSource {
  Future<PrimarySiteModel> getSiteByResidentId(String residentId);
}
