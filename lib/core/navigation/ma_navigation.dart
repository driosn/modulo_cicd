import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/domain/language_repository.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/core/shared/relational_space_calculation.dart';
import 'package:resident_app/features/auth/routes.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';
import 'package:resident_app/features/biometric_sign_in/application/bloc/biometric_authentication_bloc.dart';
import 'package:resident_app/features/document_acceptance/routes.dart';

final relationalSpaceCalculation = locator<RelationalSpaceCalculation>();

final GoRouter router = GoRouter(
    // TODO: Uncomment this once we have firebase analytics refactor
    // observers: [
    //   locator<GlobalNavigatorObserver>()
    // ],
    routes: [
      ...CoreRoutes().routes,
      ...AuthRoutes().routes,
    ],
    redirect: (context, state) async {
      SignInState signInState = context.read<SignInBloc>().state;
      BiometricAuthenticationState biometricAuthenticationState = context.read<BiometricAuthenticationBloc>().state;
      //TODO Refactor to use preferences bloc
      LanguageRepository languageRepository = locator<LanguageRepository>();
      Language? language = languageRepository.getSavedLanguage();
      final isLanguageSelected = language != null;

      final bool isLoggingIn = signInState.when(
        initial: () => true,
        loading: () => true,
        loggedOut: () => true,
        sessionExpired: () => false,
        success: (user, navigateToSummary) => false,
        failure: (error) => true,
        biometricsFailure: (error) => true,
      );

      final recentlyLoggedOut = signInState.when(
        initial: () => false,
        loading: () => false,
        loggedOut: () => false,
        sessionExpired: () => false,
        success: (user, navigateToSummary) => false,
        failure: (error) => false,
        biometricsFailure: (error) => false,
      );

      final isNewPathSignInOrDocumentAcceptance = state.uri.path.contains(AuthRoutes.signIn.path) || state.uri.path.contains(DocumentAcceptanceRoutes.documentAcceptance.path);

      if (isLanguageSelected) {
        if (isLoggingIn) {
          if (recentlyLoggedOut) {
            //debugPrint("recentlyLoggedOut -> AuthRoutes.signOut.path;");
            return AuthRoutes.signOut.path;
          } else {
            //debugPrint("!recentlyLoggedOut -> return AuthRoutes.signIn.path;");
            return AuthRoutes.signIn.path;
          }
        } else if (biometricAuthenticationState.biometricsFirstTime && biometricAuthenticationState.haveBiometricAuthenticationAvaliable) {
          if (isNewPathSignInOrDocumentAcceptance) {
            return null;
          }

          return AuthRoutes.biometricSignIn.path;
        } else {
          return null;
        }
      } else {
        //TODO: Find a clever way to optimize this to account for more lenguages in future
        if (language == Language.spanish) {
          locator.resetLocalizations(const Locale('es', 'US'));
        } else {
          locator.resetLocalizations(const Locale('en', 'US'));
        }
        return CoreRoutes.lenguageSelection.path;
      }
    });

extension RouterExtension on GoRouter {
  bool routeExists(Uri route) {
    try {
      return routeInformationParser.configuration.findMatch(route).matches.isNotEmpty;
    } catch (err) {
      return false;
    }
  }
}
