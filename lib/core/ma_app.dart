import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/navigation/ma_navigation.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_theme_bloc.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/core/shared/network/network_wrapper.dart';
import 'package:resident_app/core/shared/relational_space_calculation.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';

class MAApp extends StatefulWidget {
  const MAApp({
    super.key,
  });

  @override
  State<MAApp> createState() => _MAAppState();
}

class _MAAppState extends State<MAApp> with WidgetsBindingObserver {
  late Key refreshKey;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    refreshKey = UniqueKey();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeTextScaleFactor() {
    setState(() {
      _updateScaleFactorAndReBuild();
    });
  }

  void _updateScaleFactorAndReBuild() {
    final scaleFactor = WidgetsBinding.instance.platformDispatcher.textScaleFactor;
    locator.updateScalerConfig(scaleFactor);
    refreshKey = UniqueKey();
    print('Updated Scale Factor: $scaleFactor');
  }

  @override
  Widget build(BuildContext context) {
    RelationalSpaceCalculation().setRelationalSpace(context);
    return BlocBuilder<SignInBloc, SignInState>(builder: (context, signInState) {
      return BlocConsumer<UserPreferencesBloc, UserPreferencesState>(
        listenWhen: (previous, current) {
          return previous.selectedLanguage.languageType != current.selectedLanguage.languageType;
        },
        listener: (BuildContext context, UserPreferencesState state) {
          final networkWrapper = locator<NetworkWrapper>();
          networkWrapper.updateLanguageHeader(state.selectedLanguage.languageHeader);
        },
        builder: (context, userPreferenceState) {
          return BlocBuilder<MAThemeBloc, MAThemeState>(
            builder: (context, maThemeState) {
              return MaterialApp.router(
                debugShowCheckedModeBanner: false,
                locale: userPreferenceState.selectedLanguage.language,
                // theme: maTheme,
                theme: maThemeState.theme,
                routerConfig: router,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', 'US'),
                  Locale('es', 'US'),
                ],
              );
            },
          );
        },
      );
    });
  }
}
