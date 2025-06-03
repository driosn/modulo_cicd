import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/routes.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/features/language_selection/presentation/views/language_preference_view.dart';

class LanguagePreferenceRoutes implements RoutesGroup {
  static final languagePreference = GoRoute(
    name: 'language_preference',
    path: 'language-preference',
    builder: (BuildContext context, __) {
      locator<NavigationDrawerBloc>()
          .add(const NavigationDrawerEvent.myAccountLanguagePreference());
      return LanguagePreferenceView();
    },
  );

  @override
  List<RouteBase> get routes => [
        languagePreference,
      ];
}
