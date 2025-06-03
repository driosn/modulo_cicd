import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/create_password/presentation/views/create_password_view.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/start_registration/presentation/views/start_registration_view.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/welcome/presentation/views/welcome_view.dart';
import 'package:resident_app/features/enter_access_code/presentation/views/enter_access_code_view.dart';

import 'explainer/presentation/views/explainer_view.dart';

class LegacyRoutes implements RoutesGroup {

        static final welcome = GoRoute(
          name: 'welcome_view',
          path: 'welcome-view',
          builder: (BuildContext context, GoRouterState state) {
            return const WelcomeView();
          },
          routes: [
            startRegistration,
          ]
        );
        static final startRegistration = GoRoute(
          name: 'start_registration_view',
          path: 'start-registration-view',
          builder: (BuildContext context, GoRouterState state) {
            return const StartRegistrationView();
          },
          routes: [
            createPassword,
            accessCode,
          ]
        );
        static final accessCode = GoRoute(
          name: 'enter_access_code',
          path: 'enter-access-code',
          builder: (BuildContext context, GoRouterState state) {
            return const EnterAccessCodeView();
          },
        );
        static final createPassword = GoRoute(
          name:'create_password',
          path: 'create-password',
          builder: (BuildContext context, GoRouterState state) {
            return CreatePasswordView();
          },
        );
        static final explainer = GoRoute(
          path: 'explainer-view',
          name: 'explainer_view',
          builder: (BuildContext context, GoRouterState state) {
            return const ExplainerView();
          },
          routes: [
            welcome
          ]
        );

@override
  List<RouteBase> get routes => [
      explainer
      ];
}