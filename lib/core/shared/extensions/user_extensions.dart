import 'package:resident_app/features/user/user_feature.dart';

extension UserExtension on User {
  List<Site> get allSites => [
        primarySite,
        ...associatedSites,
      ];

  String get residentFullName =>
      '${primarySite.resident.firstName} ${primarySite.resident.lastName}';
}
