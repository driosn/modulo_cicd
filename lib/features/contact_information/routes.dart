import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/contact_information/presentation/views/edit_email_view.dart';
import 'package:resident_app/features/contact_information/presentation/views/edit_password_view.dart';
import 'package:resident_app/features/contact_information/presentation/views/edit_secure_authentication_view.dart';
import 'package:resident_app/features/contact_information/presentation/views/edit_username_view.dart';
import 'package:resident_app/features/contact_information/presentation/views/login_settings_view.dart';

import 'presentation/views/contact_information_view.dart';

class UserInformationRoutes implements RoutesGroup {
  static final loginSettings = GoRoute(
      name: 'login_settings',
      path: 'login-settings',
      builder: (BuildContext context, state) {
        locator<NavigationDrawerBloc>()
            .add(const NavigationDrawerEvent.myAccountLogInSettings());
        return LoginSettingsView();
      },
      routes: [editUsername, editPassword, editSecureAutentication, editEmail]);

  static final editUsername = GoRoute(
    name: 'edit_username',
    path: 'edit-username',
    builder: (BuildContext context, state) {
      return EditUsernameView();
    },
  );

  static final editEmail = GoRoute(
    name: 'edit_email',
    path: 'edit-email',
    builder: (BuildContext context, state) {
      return EditEmailView();
    },
  );

  static final editPassword = GoRoute(
    name: 'edit_password',
    path: 'edit-password',
    builder: (BuildContext context, state) {
      return EditPasswordView();
    },
  );

  static final editSecureAutentication = GoRoute(
    name: 'edit_secure_autentication',
    path: 'edit-secure-autentication',
    builder: (BuildContext context, state) {
      return EditSecureAuthenticationView();
    },
  );

  static final contactInformation = GoRoute(
    name: 'contact_infomation',
    path: 'contact-information',
    builder: (BuildContext context, state) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.myAccountContactInfo());
      return const ContactInformationView();
    },
  );
  @override
  // TODO: implement routes
  List<RouteBase> get routes => [loginSettings, contactInformation];
}
