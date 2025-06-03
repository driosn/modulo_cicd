import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/features/auth/sign_in/presentation/views/session_expired_view.dart';
import 'package:resident_app/features/auth/sign_in/presentation/views/sign_in_view.dart';
import 'package:resident_app/features/auth/sign_in/presentation/views/sign_out_view.dart';
import 'package:resident_app/features/biometric_sign_in/presentation/views/biometric_sign_in_view.dart';

class AuthRoutes implements RoutesGroup {
  static final signIn = GoRoute(
    name: 'sign_in_view',
    path: '/sign-in-view',
    builder: (BuildContext context, GoRouterState state) {
      return SignInView();
    },
  );
  static final biometricSignIn = GoRoute(
    name: 'biometric_sign_in_view',
    path: '/biometric_sign-in-view',
    builder: (BuildContext context, GoRouterState state) {
      return BiometricSignInView();
    },
  );
  static final signOut = GoRoute(
    name: 'sign_out_view',
    path: '/sign-out-view',
    builder: (BuildContext context, GoRouterState state) {
      return SignOutView();
    },
  );
  static final sessionExpired = GoRoute(
    name: 'session_expired_view',
    path: '/session-expired-view',
    builder: (BuildContext context, GoRouterState state) {
      return SessionExpiredView();
    },
  );

  @override
  List<RouteBase> get routes => [
        signIn,
        biometricSignIn,
        signOut,
        sessionExpired,
      ];
}
