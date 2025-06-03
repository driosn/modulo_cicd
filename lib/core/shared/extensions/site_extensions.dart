import 'package:resident_app/features/user/domain/user_domain.dart';

extension SiteExtensions on Site {
  String get fullAddress => '\n$address1\n$city, $state, $zipCode';

  bool get isAssociatedSite => this is AssociatedSite;

  bool get isPrimarySite => this is PrimarySite;

  bool isSameSite(Site site) {
    return address1 == site.address1 &&
        address2 == site.address2 &&
        city == site.city &&
        state == site.state &&
        zipCode == site.zipCode;
  }
}
