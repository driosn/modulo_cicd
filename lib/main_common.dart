import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/domain/language_repository.dart';
import 'package:resident_app/core/ma_app.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_theme_bloc.dart';
import 'package:resident_app/core/shared/config/app_datasources.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/environment.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';
import 'package:resident_app/features/biometric_sign_in/application/bloc/biometric_authentication_bloc.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

String versionNumber = "";

Future<void> mainCommon({
  required Environment env,
  required FirebaseOptions options,
}) async {
  if (kDebugMode) {
    debugPrint("Environment set to ${env.name}");
  }

  ///
  /// Firebase Initialization
  ///
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'residentportal-mobile-${env.name}',
    options: options,
  );

  ///
  /// Push Notifications Initialization
  ///
  // FirebaseMessaging.onBackgroundMessage(
  //     MARemoteNotification.firebaseMessagingBackgroundHandler);
  // FirebaseMessaging messaging = FirebaseMessaging.instance;
  // NotificationSettings settings = await messaging.requestPermission(
  //   alert: true,
  //   announcement: false,
  //   badge: true,
  //   carPlay: false,
  //   criticalAlert: true,
  //   provisional: false,
  //   sound: true,
  // );
  // AuthorizationStatus status = settings.authorizationStatus;
  // if (status == AuthorizationStatus.authorized) {
  //   String deviceId = (await FirebaseMessaging.instance.getToken())!;
  //   print("Device ID: $deviceId");
  //   FirebaseMessaging.onMessage
  //       .listen(MARemoteNotification.handleRemoteMessage);

  //   await MALocalNotifications.initializeLocalNotifications();
  // }

  ///
  /// Get version number
  ///
  final info = await PackageInfo.fromPlatform();
  versionNumber = info.version;

  ///
  /// Initialization of FirebaseRemoteConfig
  ///
  final remoteConfig = FirebaseRemoteConfig.instance;
  await remoteConfig.setConfigSettings(
    RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(seconds: 1),
    ),
  );
  await remoteConfig.fetchAndActivate();

  ///
  /// Crashlytics
  ///
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  ///
  /// Init Language Repo and get Language
  ///
  final sharedPreferences = await SharedPreferences.getInstance();
  final languageRepository = LanguageRepository(
    sharedPreferences: sharedPreferences,
  );
  final Language? language = languageRepository.getSavedLanguage();

  ///
  /// Init Scaler config, used for MASpacing
  ///
  final scalerConfig = ScalerConfig.init(
    PlatformDispatcher.instance.textScaleFactor,
  );

  ///
  /// Setup Locator
  /// setupUniqueLocatorInstances should be called just once in all the project
  ///
  final serviceLocator = ServiceLocator();
  await serviceLocator.setupUniqueLocatorInstances(
    env: env,
    appLanguage: language,
    selectedDataSource: AppDataSources.residentPortalMobileAPI,
  );
  await serviceLocator.setupLocator(
    env: env,
    appLanguage: language,
    scalerConfig: scalerConfig,
    selectedDataSource: AppDataSources.residentPortalMobileAPI,
  );

  locator<WhitelabelBloc>().add(WhitelabelEvent.setupWhitelabel());

  ///
  /// App Run
  ///
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<MAThemeBloc>(
          create: (context) {
            return MAThemeBloc();
          },
        ),
        BlocProvider<BiometricAuthenticationBloc>(
          create: (context) {
            return locator<BiometricAuthenticationBloc>();
          },
        ),
        BlocProvider<UserPreferencesBloc>.value(
          value: locator<UserPreferencesBloc>()
            ..add(
              UserPreferencesEvent.loadLanguage(),
            ),
        ),
        BlocProvider<SignInBloc>(create: (_) => locator<SignInBloc>()),
      ],
      child: const MAApp(),
    ),
  );
}
