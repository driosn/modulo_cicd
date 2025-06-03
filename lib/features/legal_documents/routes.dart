import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/legal_documents/presentation/views/end_user_license_agreement_view.dart';

class EndUserLicenseAgreementRoutes implements RoutesGroup {
  static final endUserLicenseAgreement = GoRoute(
    name: 'end-user-license-agreement',
    path: 'end-user-license-agreement',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>().add(const NavigationDrawerEvent.myAccountLegalDocuments());
      return const EndUserLicenseAgreementView();
    },
  );

  @override
  List<RouteBase> get routes => [
        endUserLicenseAgreement,
      ];
}
