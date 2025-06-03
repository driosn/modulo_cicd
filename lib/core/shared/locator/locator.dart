import 'package:dio/dio.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';
import 'package:local_auth/local_auth.dart';
import 'package:resident_app/core/application/bloc/navigation_drawer/navigation_drawer_bloc.dart';
import 'package:resident_app/core/application/bloc/sign_in_dialog/sign_in_dialog_bloc.dart';
import 'package:resident_app/core/application/bloc/user_preferences/user_preferences_bloc.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/domain/language_repository.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_colorpalette_bloc.dart';
import 'package:resident_app/core/presentation/themes/application/bloc/ma_theme_bloc.dart';
import 'package:resident_app/core/presentation/themes/color_palette.dart';
import 'package:resident_app/core/presentation/themes/color_palette_light.dart';
import 'package:resident_app/core/presentation/widgets/forms/new_payment_account/bloc/new_payment_account_form_bloc.dart';
import 'package:resident_app/core/shared/config/app_datasources.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/config/source_info.dart';
import 'package:resident_app/core/shared/data/secure_storage.dart';
import 'package:resident_app/core/shared/helpers/crashlytics_helper.dart';
import 'package:resident_app/core/shared/helpers/error_messages_helper.dart';
import 'package:resident_app/core/shared/helpers/loan_name_helper.dart';
import 'package:resident_app/core/shared/helpers/number_formatter_helper.dart';
import 'package:resident_app/core/shared/localizations/ma_localizations.dart';
import 'package:resident_app/core/shared/network/network_wrapper.dart';
import 'package:resident_app/core/shared/relational_space_calculation.dart';
import 'package:resident_app/environment.dart';
import 'package:resident_app/features/announcements/application/bloc/announcements_bloc.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_api_datasource.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_preferences_datasource.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_prefs_datasource.dart';
import 'package:resident_app/features/announcements/data/datasources/announcements_remote_datasource.dart';
import 'package:resident_app/features/announcements/data/repositories/announcements_repository_impl.dart';
import 'package:resident_app/features/announcements/domain/repositories/announcements_repository.dart';
import 'package:resident_app/features/auth/log_in_help/application/bloc/log_in_help_bloc.dart';
import 'package:resident_app/features/auth/log_in_help/data/datasources/log_in_help_remote_datasource.dart';
import 'package:resident_app/features/auth/log_in_help/data/datasources/log_in_help_remoteconfig_datasource.dart';
import 'package:resident_app/features/auth/log_in_help/data/repositories/log_in_help_repository_impl.dart';
import 'package:resident_app/features/auth/log_in_help/domain/repositories/log_in_help_repository.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_validations_bloc.dart';
import 'package:resident_app/features/auth/sign_in/data/datasources/login_api_datasource.dart';
import 'package:resident_app/features/auth/sign_in/data/datasources/login_remote_datasource.dart';
import 'package:resident_app/features/auth/sign_in/data/repositories/login_repository_impl.dart';
import 'package:resident_app/features/auth/sign_in/domain/entities/repositories/login_repository.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay/autopay_bloc.dart';
import 'package:resident_app/features/autopay/application/bloc/autopay_settings/autopay_settings_bloc.dart';
import 'package:resident_app/features/autopay/data/datasources/autopay_settings_api_datasource.dart';
import 'package:resident_app/features/autopay/data/datasources/autopay_settings_remote_datasource.dart';
import 'package:resident_app/features/autopay/data/repositories/autopay_settings_repository_impl.dart';
import 'package:resident_app/features/autopay/domain/repositories/autopay_settings_repository.dart';
import 'package:resident_app/features/billing_settings/application/bloc/bill_delivery_bloc.dart';
import 'package:resident_app/features/billing_settings/data/datasources/billing_settings_api_datasource.dart';
import 'package:resident_app/features/billing_settings/data/datasources/billing_settings_remote_datasource.dart';
import 'package:resident_app/features/billing_settings/data/repositories/billing_settings_repository_impl.dart';
import 'package:resident_app/features/billing_settings/domain/repositories/billing_settings_repository.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/billings_bloc.dart';
import 'package:resident_app/features/bills_and_payments/application/bloc/payments_bloc.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/billings_api_datasource.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/billings_remote_datasource.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/payments_api_datasource.dart';
import 'package:resident_app/features/bills_and_payments/data/datasources/payments_remote_datasource.dart';
import 'package:resident_app/features/bills_and_payments/data/repositories/billings_repository_impl.dart';
import 'package:resident_app/features/bills_and_payments/data/repositories/payments_repository_impl.dart';
import 'package:resident_app/features/bills_and_payments/domain/repositories/billings_repository.dart';
import 'package:resident_app/features/bills_and_payments/domain/repositories/payments_repository.dart';
import 'package:resident_app/features/biometric_sign_in/application/bloc/biometric_authentication_bloc.dart';
import 'package:resident_app/features/biometric_sign_in/domain/repositories/biometric_repository.dart';
import 'package:resident_app/features/company_content/application/bloc/company_content_bloc.dart';
import 'package:resident_app/features/company_content/data/datasources/company_content_api_datasource.dart';
import 'package:resident_app/features/company_content/data/datasources/company_content_remote_datasource.dart';
import 'package:resident_app/features/company_content/data/repositories/company_content_repository_impl.dart';
import 'package:resident_app/features/company_content/domain/repositories/company_content_repository.dart';
import 'package:resident_app/features/contact_information/application/bloc/contact_information_edit/contact_information_edit_bloc.dart';
import 'package:resident_app/features/contact_information/data/datasources/contact_information_api_datasource.dart';
import 'package:resident_app/features/contact_information/data/datasources/contact_information_remote_datasource.dart';
import 'package:resident_app/features/contact_information/data/repositories/contact_information_repository_impl.dart';
import 'package:resident_app/features/contact_information/domain/repositories/contact_information_repository.dart';
import 'package:resident_app/features/delete_my_account/data/datasources/delete_remote_datasource.dart';
import 'package:resident_app/features/delete_my_account/data/repositories/delete_accounts_repositories.dart';
import 'package:resident_app/features/demo/application/bloc/demo_bloc.dart';
import 'package:resident_app/features/demo/presentation/legacy_views/start_registration/application/bloc/start_registration/start_registration_bloc.dart';
import 'package:resident_app/features/document_acceptance/application/bloc/document_acceptance_bloc.dart';
import 'package:resident_app/features/document_acceptance/data/datasources/acceptance_criteria_api.dart';
import 'package:resident_app/features/document_acceptance/data/datasources/acceptance_criteria_remote_datasource.dart';
import 'package:resident_app/features/document_acceptance/data/repositories/acceptance_criteria_repository_impl.dart';
import 'package:resident_app/features/document_acceptance/domain/repositories/acceptance_criteria_repository.dart';
import 'package:resident_app/features/faq/application/bloc/faq_bloc.dart';
import 'package:resident_app/features/faq/data/datasources/faq_remote_datasource.dart';
import 'package:resident_app/features/faq/data/datasources/faq_remoteconfig_datasource.dart';
import 'package:resident_app/features/faq/data/repositories/faq_repository_impl.dart';
import 'package:resident_app/features/faq/domain/repositories/faq_repository.dart';
import 'package:resident_app/features/language_selection/application/bloc/language_preference_bloc.dart';
import 'package:resident_app/features/language_selection/data/datasources/language_preference_api_datasource.dart';
import 'package:resident_app/features/language_selection/data/datasources/language_preference_remote_datasource.dart';
import 'package:resident_app/features/language_selection/data/repositories/language_preference_repository_impl.dart';
import 'package:resident_app/features/language_selection/domain/repositories/language_preference_repository.dart';
import 'package:resident_app/features/legal_documents/application/bloc/legal_documents_bloc.dart';
import 'package:resident_app/features/legal_documents/data/datasources/legal_documents_remote_datasource.dart';
import 'package:resident_app/features/legal_documents/data/datasources/legal_documents_remoteconfig_datasource.dart';
import 'package:resident_app/features/legal_documents/data/datasources/repositories/legal_documents_repository_impl.dart';
import 'package:resident_app/features/legal_documents/domain/repositories/legal_documents_repository.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/credit_card_payment/credit_card_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/payment_settings/payment_settings_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/send_payment/send_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/_children/setup_payment/application/bloc/setup_payment/setup_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_bloc.dart';
import 'package:resident_app/features/make_a_payment/application/bloc/make_a_payment_navigation_bloc.dart';
import 'package:resident_app/features/make_a_payment/data/datasources/make_a_payment_api_datasource.dart';
import 'package:resident_app/features/make_a_payment/data/datasources/make_a_payment_remote_datasource.dart';
import 'package:resident_app/features/make_a_payment/data/repositories/make_a_payment_repository_impl.dart';
import 'package:resident_app/features/make_a_payment/domain/repositories/make_a_payment_repository.dart';
import 'package:resident_app/features/pay_by_text/application/bloc/pay_by_text/pay_by_text_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/payment_accounts_bloc.dart';
import 'package:resident_app/features/payment_account/application/bloc/property_payment_settings_bloc.dart';
import 'package:resident_app/features/payment_account/common/error_parser.dart';
import 'package:resident_app/features/payment_account/data/datasources/payment_accounts_api_datasource.dart';
import 'package:resident_app/features/payment_account/data/datasources/payment_accounts_remote_datasource.dart';
import 'package:resident_app/features/payment_account/data/datasources/property_payment_settings_api_datasource.dart';
import 'package:resident_app/features/payment_account/data/datasources/property_payment_settings_remote_datasource.dart';
import 'package:resident_app/features/payment_account/data/repositories/payment_accounts_repository_impl.dart';
import 'package:resident_app/features/payment_account/data/repositories/property_payment_settings_repository_impl.dart';
import 'package:resident_app/features/payment_account/domain/repositories/payment_accounts_repository.dart';
import 'package:resident_app/features/payment_account/domain/repositories/property_payment_settings_repository.dart';
import 'package:resident_app/features/privacy_policy/application/bloc/privacy_policy_bloc.dart';
import 'package:resident_app/features/privacy_policy/data/datasources/privacy_policy_remote_datasource.dart';
import 'package:resident_app/features/privacy_policy/data/datasources/privacy_policy_remoteconfig_datasource.dart';
import 'package:resident_app/features/privacy_policy/data/datasources/repositories/privacy_policy_repository_impl.dart';
import 'package:resident_app/features/privacy_policy/domain/repositories/privacy_policy_repository.dart';
import 'package:resident_app/features/site/application/bloc/site_bloc.dart';
import 'package:resident_app/features/site/data/datasources/site_api_datasource.dart';
import 'package:resident_app/features/site/data/datasources/site_remote_datasource.dart';
import 'package:resident_app/features/site/data/datasources/site_remoteconfig_datasource.dart';
import 'package:resident_app/features/site/data/repositories/site_repository_impl.dart';
import 'package:resident_app/features/site/domain/repositories/site_repository.dart';
import 'package:resident_app/features/summary/application/bloc/summary_bloc.dart';
import 'package:resident_app/features/terms_of_use/application/bloc/terms_of_use_bloc.dart';
import 'package:resident_app/features/terms_of_use/data/datasources/repositories/terms_of_use_repository_impl.dart';
import 'package:resident_app/features/terms_of_use/data/datasources/terms_of_use_remote_datasource.dart';
import 'package:resident_app/features/terms_of_use/data/datasources/terms_of_use_remoteconfig_datasource.dart';
import 'package:resident_app/features/terms_of_use/domain/repositories/terms_of_use_repository.dart';
import 'package:resident_app/features/user/data/datasources/user_remote_datasource.dart';
import 'package:resident_app/features/user/data/datasources/user_remoteconfig_datasource.dart';
import 'package:resident_app/features/user/user_feature.dart';
import 'package:resident_app/features/whitelabel/application/bloc/whitelabel_bloc.dart';
import 'package:resident_app/features/whitelabel/data/datasources/whitelabel_local_datasource.dart';
import 'package:resident_app/features/whitelabel/data/datasources/whitelabel_localstorage_datasource.dart';
import 'package:resident_app/features/whitelabel/data/datasources/whitelabel_remote_datasource.dart';
import 'package:resident_app/features/whitelabel/data/datasources/whitelabel_remoteconfig_datasource.dart';
import 'package:resident_app/features/whitelabel/data/repositories/whitelabel_repository_impl.dart';
import 'package:resident_app/features/whitelabel/domain/repositories/whitelabel_repository.dart';
import 'package:resident_app/features/delete_my_account/application/bloc/delete_account_bloc.dart';
import 'package:resident_app/features/delete_my_account/data/datasources/delete_api_datasource.dart';
import 'package:resident_app/features/delete_my_account/data/repositories/delete_accounts_repository_impl.dart';


import 'package:shared_preferences/shared_preferences.dart';

import '../../../features/delete_my_account/data/repositories/DeleteAccountsRepository.dart';

final locator = GetIt.instance;


// TODO MB consolidate this logic in one place to prevent duplicated logic. We currently have logic in multiple places in this file.
extension ResetLocalizations on GetIt {
  void resetLocalizations(Locale? appLocale) {
    const defaultLocale = Locale('en', 'US');

    locator.registerSingleton<MaLocalizations>(
      MaLocalizations(
        localizations: lookupAppLocalizations(
          appLocale ?? defaultLocale,
        ),
      ),
    );
    locator.registerSingleton<ErrorMessagesHelper>(
      ErrorMessagesHelper(
        maLocalizations: locator<MaLocalizations>(),
      ),
    );
    locator.registerSingleton<LoanNameHelper>(
      LoanNameHelper(
        maLocalizations: locator<MaLocalizations>(),
      ),
    );

    //
    // Services that depend on locale
    //
    ServiceLocator.setupFaq(appLocale: appLocale ?? defaultLocale);
    ServiceLocator.setupPrivacyPolicy(appLocale: appLocale ?? defaultLocale);
    ServiceLocator.setupLegalDocuments(appLocale: appLocale ?? defaultLocale);
    ServiceLocator.setupTermsOfUse(appLocale: appLocale ?? defaultLocale);
    ServiceLocator.setupLogin(appLocale ?? defaultLocale);
  }
}

extension SetThemeColor on GetIt {
  void setThemeColor(ColorPalette themeColors) {
    locator.registerSingleton<ColorPalette>(
      themeColors,
    );
  }
}

extension SetScalerConfig on GetIt {
  void updateScalerConfig(double scaleFactor) {
    locator.registerSingleton<ScalerConfig>(
      ScalerConfig.init(scaleFactor),
    );
  }
}

class ServiceLocator {
  Future<void> setupUniqueLocatorInstances({
    required Environment env,
    Language? appLanguage,
    AppDataSources selectedDataSource = AppDataSources.residentPortalMobileAPI,
  }) async {
    await _setupCore(
      appLanguage?.language ?? Language.english.language,
      selectedDataSource,
    );
    _setupNetwork(env, appLanguage ?? Language.english);
    _setupBiometricAuthentication();
    _setupColorpalette();
  }

  Future<void> setupLocator({
    required Environment env,
    Language? appLanguage,
    Locale? appLocale,
    required ScalerConfig scalerConfig,
    AppDataSources selectedDataSource = AppDataSources.residentPortalMobileAPI,
  }) async {
    locator.allowReassignment = true;
    appLanguage ??= Language.english;
    var appLocale = appLanguage.language;

    // _setUpEnv(env);
    _setCrashlytics();
    locator.registerSingleton<Environment>(env);
    _setupScalerConfig(scalerConfig);
    await _setupCore(appLocale, selectedDataSource);
    _setupDemo();
    _setupDialogs();
    _setupStartRegistration();
    _setupAcceptanceCriteria();
    _setupAutoPay();
    _setupPayByText();
    _setupBillingSettings();
    _setupLanguagePreference();
    _setupMakeAPayment();
    _setupThemeColors();
    _setupUser(selectedDataSource);
    _setupContactInformation();
    _setupPaymentHistory();
    _setupBillingHistory();
    _setupPaymentAccounts();
    _setupPropertyPaymentSettings();
    _setupWhitelabel();
    _setupTheme();
    _setupCoreWidgets();
    setupTermsOfUse(
      appLocale: appLocale,
    );
    setupLegalDocuments(
      appLocale: appLocale,
    );
    setupPrivacyPolicy(
      appLocale: appLocale,
    );
    _setupCompanyContent();
    _setupNavigationDrawerBloc();
    setupFaq(
      appLocale: appLocale,
    );
    _setupSite(selectedDataSource);
    _setupAnnouncements();
    _setupAutoPaySettings();
    setupLogin(appLocale);
    _setupSummary();
    _setupDeleteAccount();
  }

  void _setupScalerConfig(ScalerConfig scalerConfig) {
    locator.registerSingleton<ScalerConfig>(scalerConfig);
  }
  //TODO: Check if we will need extra environment capability
  // void _setUpEnv(Environment env){
  //   locator.registerSingleton<Environment>(env);
  // }

  void _setupNavigationDrawerBloc() {
    locator.registerSingleton<NavigationDrawerBloc>(NavigationDrawerBloc());
  }

  void _setupThemeColors() {
    locator.registerSingleton<ColorPalette>(ColorPaletteLight());
  }

  void _setCrashlytics() {
    locator.registerSingleton<CrashlyticsHelper>(CrashlyticsHelper());
  }

  void _setupTheme() {
    locator.registerSingleton<MAThemeBloc>(MAThemeBloc());
  }

  void _setupColorpalette() {
    locator.registerSingleton<MAColorpaletteBloc>(MAColorpaletteBloc());
  }

  void _setupNetwork(Environment env, Language appLanguage) {
    locator.registerSingleton<Dio>(
      Dio(),
    );
    //
    // TODO: Move the base url to a flavored logic
    //
    locator.registerSingleton<NetworkWrapper>(
      NetworkWrapper(
        dio: locator<Dio>(),
        baseUrl: env.apiBaseUrl,
      )..init(appLanguage.languageHeader),
    );
  }

  Future<void> _setupCore(
    Locale appLocale,
    AppDataSources selectedDataSource,
  ) async {
    locator.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance(),
    );
    await GetIt.instance.isReady<SharedPreferences>();

    locator.registerSingleton<SourceInfo>(
      SourceInfo(
        source: selectedDataSource,
      ),
    );
    locator.registerSingleton<FlutterSecureStorage>(
      const FlutterSecureStorage(),
    );
    locator.registerSingleton<SecureStorageWrapper>(
      SecureStorageWrapper(
        storage: locator<FlutterSecureStorage>(),
      ),
    );
    locator.registerSingleton<LanguageRepository>(
      LanguageRepository(
        sharedPreferences: locator<SharedPreferences>(),
      ),
    );

    //
    //GlobalNavigationObserver
    //
    // locator.registerSingleton<GlobalNavigatorObserver>(
    // GlobalNavigatorObserver(
    // crashlyticsHelper: locator<CrashlyticsHelper>(),
    // ),
    // );
    //
    // Preferences
    //
    locator.registerSingleton<UserPreferencesBloc>(
      UserPreferencesBloc(
        languageRepository: locator<LanguageRepository>(),
      ),
    );
    //
    // Localizations
    //
    locator.registerSingleton<MaLocalizations>(
      MaLocalizations(
        localizations: lookupAppLocalizations(
          appLocale,
        ),
      ),
    );
    locator.registerSingleton<ErrorMessagesHelper>(
      ErrorMessagesHelper(
        maLocalizations: locator<MaLocalizations>(),
      ),
    );
    locator.registerSingleton<LoanNameHelper>(
      LoanNameHelper(
        maLocalizations: locator<MaLocalizations>(),
      ),
    );
    locator.registerSingleton<NumberFormatterHelper>(
      NumberFormatterHelper(
        currencyFormat: NumberFormat("#,##0.00", "en_US"),
      ),
    );
    locator.registerSingleton<RelationalSpaceCalculation>(
      RelationalSpaceCalculation(),
    );
    locator
        .registerSingleton<FirebaseRemoteConfig>(
      FirebaseRemoteConfig.instance
        ..setConfigSettings(
          RemoteConfigSettings(
            fetchTimeout: const Duration(minutes: 1),
            minimumFetchInterval: const Duration(seconds: 1),
          ),
        ),
    )
        .setDefaults(const {
          //TODO: These hex colors are set in multiple places throughout the project. Pending refactor to define a single source and use it consistently across the project.
      "lightPrimaryBase": "0xff0366dd",
      "lightPrimary100": "0xfff5f9ff",
      "lightPrimary200": "0xffe6f1ff",
      "lightPrimary300": "0xffcde3fe",
      "lightPrimary400": "0xffafd2fe",
      "lightPrimary500": "0xff81b9fd",
      "lightPrimary600": "0xff358ffc",
      "lightPrimary700": "0xff025ac3",
      "lightPrimary800": "0xff024392",
      "lightPrimary900": "0xff002c61",
      "lightPrimary1000": "0xff011e41",
      "lightSecondaryBase": "0xff02aade",
      "lightSecondary100": "0xfff5fdff",
      "lightSecondary200": "0xffccf3ff",
      "lightSecondary300": "0xff99e6fe",
      "lightSecondary400": "0xff67dafe",
      "lightSecondary500": "0xff34cdfd",
      "lightSecondary600": "0xff02c1fc",
      "lightSecondary700": "0xff019aca",
      "lightSecondary800": "0xff017498",
      "lightSecondary900": "0xff004d65",
      "lightSecondary1000": "0xff002733",
      "lightTertiaryBase": "0xff1fde02",
      "lightTertiary100": "0xfff7fef5",
      "lightTertiary200": "0xffd4fbcf",
      "lightTertiary300": "0xffaaf89f",
      "lightTertiary400": "0xff80f56f",
      "lightTertiary500": "0xff56f23f",
      "lightTertiary600": "0xff2cef0f",
      "lightTertiary700": "0xff23bf0c",
      "lightTertiary800": "0xff1a8f09",
      "lightTertiary900": "0xff115f06",
      "lightTertiary1000": "0xff082f03",
      "lightAquaAccent": "0xff02decb",
      "lightDeepBlueAccent": "0xff0220de",
      "lightGrayishBlueAccent": "0xff315178",
      "lightPurpleAccent": "0xff775ee0",
      "lightMagentaAccent": "0xffde0299",
      "lightChartreuseAccent": "0xffb8de02",
      "lightDarkOliveAccent": "0xff565e30",
      "lightPumpkinAccent": "0xffABF99F",
      "lightGoldAccent": "0xffdebc02",
      "lightSurfaceContainerLowest": "0xffffffff",
      "lightSurface": "0xfff9fafa",
      "lightSurfaceBright": "0xfff4f5f6",
      "lightSurfaceContainerLow": "0xffeeeff1",
      "lightSurfaceContainer": "0xffe9eaed",
      "lightSurfaceContainerHigh": "0xffe3e5e8",
      "lightSurfaceContainerHighest": "0xffdde0e3",
      "lightSurfaceDim": "0xffd8dbdf",
      "lightOutlineVariant": "0xffabb1ba",
      "lightOutline": "0xff737d8b",
      "lightOnSurfaceVariant": "0xff454b54",
      "lightOnSurface": "0xff17191c",
      "lightAppBarBg": "0xff1665C0",
      "lightAppBarTextIcon": "0xffFFFFFF",
      "lightAppBarAccent": "0xff1fde02",
      "lightBadgeDot": "0xff775ee0",
      "lightBadgeSingleChar": "0xff775ee0",
      "lightBadgeSingleCharLabel": "0xfff5fdff",
      "lightBadgeMultiChar": "0xffaaf89f",
      "lightBadgeMultiCharLabel": "0xff011e41",
      "lightButtonPrimaryBg": "0xff1665C0",
      "lightButtonPrimaryDisabledBg": "0xffe6f1ff",
      "lightButtonPrimaryDisabledLabel": "0xfff5fdff",
      "lightButtonPrimaryOnTapBg": "0xff024392",
      "lightButtonPrimaryLabel": "0xfff5fdff",
      "lightButtonSecondaryBg": "0xfff5f9ff",
      "lightButtonSecondaryBorder": "0xffe6f1ff",
      "lightButtonSecondaryLabel": "0xff025ac3",
      "lightButtonSecondaryOnTapBg": "0xffe6f1ff",
      "lightButtonSecondaryDisabledBorder": "0xffe6f1ff",
      "lightButtonSecondaryDisabledLabel": "0xffe6f1ff",
      "lightButtonSecondaryDisabledBg": "0xfff5f9ff",
      "lightButtonSegmentedBorder": "0xffabb1ba",
      "lightButtonSegmentedSelectedBg": "0xffccf3ff",
      "lightButtonSegmentedUnselectedBg": "0xffffffff",
      "lightButtonSegmentedSelectedLabel": "0xff002c61",
      "lightButtonSegmentedUnselectedLabel": "0xff002c61",
      "lightButtonFabBg": "0xff0366dd",
      "lightButtonFabLabel": "0xfff5fdff",
      "lightCardBorder": "0xffFFA000",
      "lightCardBg": "0xffffffff",
      "lightChipWipBorder": "0xffd9d9d9",
      "lightChipWipBorderBg": "0xffd9d9d9",
      "lightChipWipBorderLabel": "0xffd9d9d9",
      "lightChipWipFilledBg": "0xffd9d9d9",
      "lightChipWipFilledLabel": "0xffd9d9d9",
      "lightIconBaseTextIcon": "0xff002c61",
      "lightIconLinkTextIcon": "0xff017498",
      "lightIconSuccess": "0xff51bf3f",
      "lightInputFieldCheckboxCheck": "0xfff5fdff",
      "lightInputFieldCheckboxSelected": "0xff025ac3",
      "lightInputFieldCheckboxUnselectedBorder": "0xffabb1ba",
      "lightInputFieldCheckboxUnselected": "0xffffffff",
      "lightInputFieldInputBg": "0xffffffff",
      "lightInputFieldInputBorderNormal": "0xffe3e5e8",
      "lightInputFieldInputBorderFocus": "0xff025ac3",
      "lightInputFieldInputBorderSelected": "0xff025ac3",
      "lightInputFieldInputBorderWarning": "0xffd30651",
      "lightInputFieldRadioSelected": "0xff025ac3",
      "lightInputFieldRadioUnselected": "0xffabb1ba",
      "lightInputFieldSwitchSliderOn": "0xfff5fdff",
      "lightInputFieldSwitchTrackOn": "0xff025ac3",
      "lightInputFieldSwitchSliderOff": "0xff737d8b",
      "lightInputFieldSwitchTrackOff": "0xffe9eaed",
      "lightLayoutSurfaceBase": "0xffffffff",
      "lightLayoutSurfaceRaised": "0xffffffff",
      "lightLayoutScrimSurface": "0xffcde3fe",
      "lightLayoutSkeletonLoading": "0xffe9eaed",
      "lightNavigationDrawerIconText": "0xff025ac3",
      "lightNavigationDrawerBg": "0xffffffff",
      "lightNavigationDrawerSubmenuBg": "0xfff5fdff",
      "lightSnackbarSuccess": "0xffaaf89f",
      "lightSnackbarSuccessLabel": "0xff002c61",
      "lightStatusBarBg": "0xff025ac3",
      "lightStatusBarTextIcon": "0xfff5fdff",
      "lightTextBase": "0xff002c61",
      "lightTextMuted": "0xff737d8b",
      "lightTextLink": "0xff017498",
      "lightTextBrand": "0xff0366dd",
      "lightWarningWarning": "0xffd30651",
      "lightWarningOnWarning": "0xfffffafc",
      "lightWarningWarningContainer": "0xffffe0ec",
      "lightWarningOnWarningContainer": "0xff3d0018",
      "darkPrimaryBase": "0xff0366dd",
      "darkPrimary100": "0xff0a2256",
      "darkPrimary200": "0xff0d2e67",
      "darkPrimary300": "0xff0f3978",
      "darkPrimary400": "0xff134389",
      "darkPrimary500": "0xff175f9a",
      "darkPrimary600": "0xff1c6aa7",
      "darkPrimary700": "0xff2283c1",
      "darkPrimary800": "0xff279ddc",
      "darkPrimary900": "0xff2daff0",
      "darkPrimary1000": "0xff309dff",
      "darkSecondaryBase": "0xff02aade",
      "darkSecondary100": "0xff0a2256",
      "darkSecondary200": "0xff0d2e67",
      "darkSecondary300": "0xff0f3978",
      "darkSecondary400": "0xff134389",
      "darkSecondary500": "0xff175f9a",
      "darkSecondary600": "0xff1c6aa7",
      "darkSecondary700": "0xff2283c1",
      "darkSecondary800": "0xff279ddc",
      "darkSecondary900": "0xff2daff0",
      "darkSecondary1000": "0xff309dff",
      "darkTertiaryBase": "0xff1fde02",
      "darkTertiary100": "0xff053b09",
      "darkTertiary200": "0xff0a6f13",
      "darkTertiary300": "0xff0da41d",
      "darkTertiary400": "0xff12d128",
      "darkTertiary500": "0xff18ff32",
      "darkTertiary600": "0xff23ff4d",
      "darkTertiary700": "0xff36ff72",
      "darkTertiary800": "0xff4aff96",
      "darkTertiary900": "0xff6effba",
      "darkTertiary1000": "0xff92ffdf",
      "darkAquaAccent": "0xff02decb",
      "darkDeepBlueAccent": "0xff0220de",
      "darkGrayishBlueAccent": "0xff315178",
      "darkPurpleAccent": "0xff775ee0",
      "darkMagentaAccent": "0xffde0299",
      "darkChartreuseAccent": "0xffb8de02",
      "darkDarkOliveAccent": "0xff565e30",
      "darkPumpkinAccent": "0xffde9002",
      "darkGoldAccent": "0xffdebc02",
      "darkSurfaceContainerLowest": "0xffFFFFFF",
      "darkSurface": "0xff0f1113",
      "darkSurfaceBright": "0xff17191c",
      "darkSurfaceContainerLow": "0xff232628",
      "darkSurfaceContainer": "0xff2e3136",
      "darkSurfaceContainerHigh": "0xff393c41",
      "darkSurfaceContainerHighest": "0xff44474c",
      "darkSurfaceDim": "0xff4f5257",
      "darkOutlineVariant": "0xff737d8b",
      "darkOutline": "0xffabb1ba",
      "darkOnSurfaceVariant": "0xfff5fdff",
      "darkOnSurface": "0xffeeeff1",
      "darkAppBarBg": "0xff1665C0",
      "darkAppBarTextIcon": "0xffFFFFFF",
      "darkAppBarAccent": "0xff36ff72",
      "darkBadgeDot": "0xff775ee0",
      "darkBadgeSingleChar": "0xff775ee0",
      "darkBadgeSingleCharLabel": "0xfff5fdff",
      "darkBadgeMultiChar": "0xffaaf89f",
      "darkBadgeMultiCharLabel": "0xff0f3978",
      "darkButtonPrimaryBg": "0xffFFA000",
      "darkButtonPrimaryDisabledBg": "0xff0f3978",
      "darkButtonPrimaryDisabledLabel": "0xff2e3136",
      "darkButtonPrimaryOnTapBg": "0xff279ddc",
      "darkButtonPrimaryLabel": "0xfff5fdff",
      "darkButtonSecondaryBg": "0xff0f1113",
      "darkButtonSecondaryBorder": "0xffabb1ba",
      "darkButtonSecondaryLabel": "0xff0366dd",
      "darkButtonSecondaryOnTapBg": "0xff0f3978",
      "darkButtonSecondaryDisabledBorder": "0xff232628",
      "darkButtonSecondaryDisabledLabel": "0xff232628",
      "darkButtonSecondaryDisabledBg": "0xff0f1113",
      "darkButtonSegmentedBorder": "0xffabb1ba",
      "darkButtonSegmentedSelectedBg": "0xff1c6aa7",
      "darkButtonSegmentedUnselectedBg": "0xff0f1113",
      "darkButtonSegmentedSelectedLabel": "0xfff5fdff",
      "darkButtonSegmentedUnselectedLabel": "0xfff5fdff",
      "darkButtonFabBg": "0xff0366dd",
      "darkButtonFabLabel": "0xfff5fdff",
      "darkCardBorder": "0xff1665C0",
      "darkCardBg": "0xff0f1113",
      "darkChipWipBorder": "0xff17191c",
      "darkChipWipBorderBg": "0xff17191c",
      "darkChipWipBorderLabel": "0xff17191c",
      "darkChipWipFilledBg": "0xff175f9a",
      "darkChipWipFilledLabel": "0xffeff2f6",
      "darkIconBaseTextIcon": "0xfff5fdff",
      "darkIconLinkTextIcon": "0xff279ddc",
      "darkIconSuccess": "0xff51bf3f",
      "darkInputFieldCheckboxCheck": "0xff175f9a",
      "darkInputFieldCheckboxSelected": "0xff1c6aa7",
      "darkInputFieldCheckboxUnselectedBorder": "0xffabb1ba",
      "darkInputFieldCheckboxUnselected": "0xff393c41",
      "darkInputFieldInputBg": "0xff2e3136",
      "darkInputFieldInputBorderNormal": "0xff44474c",
      "darkInputFieldInputBorderFocus": "0xff022733",
      "darkInputFieldInputBorderSelected": "0xff022733",
      "darkInputFieldInputBorderWarning": "0xffd30651",
      "darkInputFieldRadioSelected": "0xff1c6aa7",
      "darkInputFieldRadioUnselected": "0xffabb1ba",
      "darkInputFieldSwitchSliderOn": "0xff022733",
      "darkInputFieldSwitchTrackOn": "0xff1c6aa7",
      "darkInputFieldSwitchSliderOff": "0xff737d8b",
      "darkInputFieldSwitchTrackOff": "0xff393c41",
      "darkLayoutSurfaceBase": "0xff0f1113",
      "darkLayoutSurfaceRaised": "0xff393c41",
      "darkLayoutScrimSurface": "0xff0f1113",
      "darkLayoutSkeletonLoading": "0xff2e3136",
      "darkNavigationDrawerIconText": "0xff279ddc",
      "darkNavigationDrawerBg": "0xff0f1113",
      "darkNavigationDrawerSubmenuBg": "0xff0f1113",
      "darkSnackbarSuccess": "0xff51bf3f",
      "darkSnackbarSuccessLabel": "0xff0f3978",
      "darkStatusBarBg": "0xff022733",
      "darkStatusBarTextIcon": "0xfff5fdff",
      "darkTextBase": "0xfff5fdff",
      "darkTextMuted": "0xffabb1ba",
      "darkTextLink": "0xff279ddc",
      "darkTextBrand": "0xff0366dd",
      "darkWarningWarning": "0xffd30651",
      "darkWarningOnWarning": "0xfffffafc",
      "darkWarningWarningContainer": "0xffffe0ec",
      "darkWarningOnWarningContainer": "0xff3d0018",
    });
  }

  static void setupLogin(Locale locale) {
    locator.registerSingleton<LogInHelpRemoteDatasource>(
      LogInHelpRemoteConfigDataSource(
        appLocale: locale,
        remoteConfig: locator<FirebaseRemoteConfig>(),
      ),
    );
    locator.registerSingleton<LogInHelpRepository>(
      LogInHelpRepositoryImpl(
        logInHelpRemoteDatasource: locator<LogInHelpRemoteDatasource>(),
      ),
    );
    locator.registerSingleton<LogInHelpBloc>(
      LogInHelpBloc(
        logInHelpRepository: locator<LogInHelpRepository>(),
      ),
    );
    locator.registerSingleton<LoginRemoteDataSource>(
      LoginApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<LoginRepository>(
      LoginRepositoryImpl(
        loginRemoteDataSource: locator<LoginRemoteDataSource>(),
      ),
    );

    locator.registerSingleton<SignInBloc>(
      SignInBloc(
        networkWrapper: locator<NetworkWrapper>(),
        userRepository: locator<UserRepository>(),
        loginRepository: locator<LoginRepository>(),
        storageWrapper: locator<SecureStorageWrapper>(),
        biometricRepository: locator<BiometricRepository>(),
        acceptanceCriteriaRepository: locator<AcceptanceCriteriaRepository>(),
      ),
    );

    locator.registerFactory<SignInValidationsBloc>(
      () => SignInValidationsBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
  }

  void _setupDemo() {
    locator.registerFactory<DemoBloc>(
      () => DemoBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
  }

  void _setupCoreWidgets() {
    locator.registerFactory<NewPaymentAccountFormBloc>(
      () => NewPaymentAccountFormBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
  }

  void _setupContactInformation() {
    locator.registerSingleton<ContactInformationRemoteDataSource>(
      ContactInformationApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<ContactInformationRepository>(
      ContactInformationRepositoryImpl(
        contactInformationRemoteDataSource: locator<ContactInformationRemoteDataSource>(),
      ),
    );

    locator.registerSingleton<ContactInformationEditBloc>(
      ContactInformationEditBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
        storageWrapper: locator<SecureStorageWrapper>(),
        userRepository: locator<UserRepository>(),
        contactInformationRepository: locator<ContactInformationRepository>(),
      ),
    );
  }

  void _setupStartRegistration() {
    locator.registerFactory<StartRegistrationBloc>(
      () => StartRegistrationBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
  }

  void _setupAutoPay() {
    locator.registerSingleton<AutoPayBloc>(
      AutoPayBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
  }

  void _setupPayByText() {
    locator.registerSingleton<PayByTextBloc>(
      PayByTextBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
  }

  void _setupDialogs() {
    locator.registerFactory<SignInDialogBloc>(
      () => SignInDialogBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
  }

  void _setupMakeAPayment() {
    locator.registerSingleton<MakeAPaymentRemoteDataSource>(
      MakeAPaymentApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<MakeAPaymentRepository>(
      MakeAPaymentRepositoryImpl(
        makeAPaymentRemoteDataSource: locator<MakeAPaymentRemoteDataSource>(),
      ),
    );

    locator.registerFactory<PaymentSettingsBloc>(
      () => PaymentSettingsBloc(
        makeAPaymentRepository: locator<MakeAPaymentRepository>(),
      ),
    );
    locator.registerSingleton<MakeAPaymentBloc>(
      MakeAPaymentBloc(
        loanNameHelper: locator<LoanNameHelper>(),
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );

    locator.registerSingleton<MakeAPaymentNavigationBloc>(
      MakeAPaymentNavigationBloc(),
    );

    locator.registerFactory<SetupPaymentBloc>(
      () => SetupPaymentBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
    locator.registerFactory<SendPaymentBloc>(
      () => SendPaymentBloc(makeAPaymentRepository: locator<MakeAPaymentRepository>()),
    );
    locator.registerFactory<CreditCardPaymentBloc>(
      () => CreditCardPaymentBloc(
        makeAPaymentRepository: locator<MakeAPaymentRepository>(),
      ),
    );
  }

  void _setupUser(AppDataSources selectedDataSource) {
    locator.registerSingleton<UserRemoteDataSource>(
      selectedDataSource == AppDataSources.residentPortalMobileAPI
          ? UserApiDataSource(
              dio: locator<NetworkWrapper>().dio,
            )
          : UserRemoteConfigDataSource(
              remoteConfig: locator<FirebaseRemoteConfig>(),
            ),
    );
    locator.registerSingleton<UserRepository>(
      UserRepositoryImpl(
        userRemoteDataSource: locator<UserRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<UserBloc>(
      UserBloc(
        storageWrapper: locator<SecureStorageWrapper>(),
        userRepository: locator<UserRepository>(),
        crashlyticsHelper: locator<CrashlyticsHelper>(),
      ),
    );
  }

  void _setupPaymentHistory() {
    locator.registerSingleton<PaymentsRemoteDataSource>(
      PaymentsApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<PaymentsRepository>(
      PaymentsRepositoryImpl(
        paymentsRemoteDataSource: locator<PaymentsRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<PaymentsBloc>(
      PaymentsBloc(
        paymentsRepository: locator<PaymentsRepository>(),
      ),
    );
  }

  void _setupBillingHistory() {
    locator.registerSingleton<BillingsRemoteDataSource>(
      BillingsApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<BillingsRepository>(
      BillingsRepositoryImpl(
        billingsRemoteDataSource: locator<BillingsRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<BillingsBloc>(
      BillingsBloc(
        billingsRepository: locator<BillingsRepository>(),
      ),
    );
  }

  void _setupAutoPaySettings() {
    //TODO:
    //It may better to create proper logic for bloc that doesn't need to be
    //Globally avalaiable

    locator.registerSingleton<AutoPaySettingsRemoteDataSource>(
      AutoPaySettingsApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<AutoPaySettingsRepository>(
      AutoPaySettingsRepositoryImpl(
        autopaySettingsRemoteDataSource: locator<AutoPaySettingsRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<AutoPaySettingsBloc>(
      AutoPaySettingsBloc(
        autopaySettingsRepository: locator<AutoPaySettingsRepository>(),
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
      ),
    );
  }

  void _setupPaymentAccounts() {
    locator.registerSingleton<ErrorParser>(
      ErrorParser(),
    );
    locator.registerSingleton<PaymentAccountsRemoteDataSource>(
      PaymentAccountsApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<PaymentAccountsRepository>(
      PaymentAccountsRepositoryImpl(
        paymentAccountsRemoteDataSource: locator<PaymentAccountsRemoteDataSource>(),
        errorParser: locator<ErrorParser>(),
      ),
    );
    locator.registerSingleton<PaymentAccountsBloc>(
      PaymentAccountsBloc(
        paymentAccountsRepository: locator<PaymentAccountsRepository>(),
      ),
    );
  }

  void _setupPropertyPaymentSettings() {
    locator.registerSingleton<PropertyPaymentSettingsRemoteDataSource>(
      PropertyPaymentSettingsAPIDataSource(),
      // PropertyPaymentSettingsRemoteConfigDataSource(),
    );
    locator.registerSingleton<PropertyPaymentSettingsRepository>(
      PropertyPaymentSettingsRepositoryImpl(
        propertyPaymentSettingsRemoteDataSource: locator<PropertyPaymentSettingsRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<PropertyPaymentSettingsBloc>(
      PropertyPaymentSettingsBloc(
        propertyPaymentSettingsRepository: locator<PropertyPaymentSettingsRepository>(),
      ),
    );
  }

  void _setupWhitelabel() {
    locator.registerSingleton<WhitelabelLocalDataSource>(
      WhitelabelLocalstorageDataSource(
        sharedPreferences: locator<SharedPreferences>(),
      ),
    );
    locator.registerSingleton<WhitelabelRemoteDataSource>(
      WhitelabelRemoteconfigDataSource(
        firebaseRemoteConfig: locator<FirebaseRemoteConfig>(),
      ),
    );
    locator.registerSingleton<WhitelabelRepository>(
      WhitelabelRepositoryImpl(
        whitelabelRemoteDataSource: locator<WhitelabelRemoteDataSource>(),
        whitelabelLocalDataSource: locator<WhitelabelLocalDataSource>(),
      ),
    );
    locator.registerSingleton<WhitelabelBloc>(
      WhitelabelBloc(
        whitelabelRepository: locator<WhitelabelRepository>(),
      ),
    );
  }

  void _setupBillingSettings() {
    locator.registerSingleton<BillingSettingsRemoteDataSource>(
      BillingSettingsApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<BillingSettingsRepository>(
      BillingSettingsRepositoryImpl(
        billingSettingsRemoteDataSource: locator<BillingSettingsRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<BillDeliveryBloc>(
      BillDeliveryBloc(
        errorMessagesHelper: locator<ErrorMessagesHelper>(),
        billingSettingsRepository: locator<BillingSettingsRepository>(),
      ),
    );
  }

  void _setupLanguagePreference() {
    locator.registerSingleton<LanguagePreferenceRemoteDataSource>(
      LanguagePreferenceApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<LanguagePreferenceRepository>(
      LanguagePreferenceRepositoryImpl(
        languagePreferenceRemoteDataSource: locator<LanguagePreferenceRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<LanguagePreferenceBloc>(
      LanguagePreferenceBloc(
        languagePreferenceRepository: locator<LanguagePreferenceRepository>(),
      ),
    );
  }

  static void setupTermsOfUse({
    required Locale appLocale,
  }) {
    locator.registerSingleton<TermsOfUseRemoteDataSource>(
      TermsOfUseRemoteConfigDataSource(
        remoteConfig: locator<FirebaseRemoteConfig>(),
        appLocale: appLocale,
      ),
    );
    locator.registerSingleton<TermsOfUseRepository>(
      TermsOfUseRepositoryImpl(
        termsOfUseRemoteDataSource: locator<TermsOfUseRemoteDataSource>(),
      ),
    );
    locator.registerFactory<TermsOfUseBloc>(
      () => TermsOfUseBloc(
        termsOfUseRepository: locator<TermsOfUseRepository>(),
      ),
    );
  }

  static void setupLegalDocuments({
    required Locale appLocale,
  }) {
    locator.registerSingleton<LegalDocumentsRemoteDataSource>(
      LegalDocumentsRemoteConfigDataSource(
        remoteConfig: locator<FirebaseRemoteConfig>(),
        appLocale: appLocale,
      ),
    );
    locator.registerSingleton<LegalDocumentsRepository>(
      LegalDocumentsRepositoryImpl(
        legalDocumentsRemoteDataSource: locator<LegalDocumentsRemoteDataSource>(),
      ),
    );
    locator.registerFactory<LegalDocumentsBloc>(
      () => LegalDocumentsBloc(
        legalDocumentsRepository: locator<LegalDocumentsRepository>(),
      ),
    );
  }

  static void _setupCompanyContent() {
    locator.registerSingleton<CompanyContentRemoteDataSource>(
      CompanyContentApiDataSource(dio: locator<NetworkWrapper>().dio),
    );
    locator.registerSingleton<CompanyContentRepository>(
      CompanyContentRepositoryImpl(
        companyContentRemoteDataSource: locator<CompanyContentRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<CompanyContentBloc>(
      CompanyContentBloc(
        companyContentRepository: locator<CompanyContentRepository>(),
        maLocalizations: locator<MaLocalizations>(),
      ),
    );
  }

  static void setupPrivacyPolicy({
    required Locale appLocale,
  }) {
    locator.registerSingleton<PrivacyPolicyRemoteDataSource>(
      PrivacyPolicyRemoteConfigDataSource(
        remoteConfig: locator<FirebaseRemoteConfig>(),
        appLocale: appLocale,
      ),
    );
    locator.registerSingleton<PrivacyPolicyRepository>(
      PrivacyPolicyRepositoryImpl(
        privacyPolicyRemoteDataSource: locator<PrivacyPolicyRemoteDataSource>(),
      ),
    );
    locator.registerFactory<PrivacyPolicyBloc>(
      () => PrivacyPolicyBloc(
        privacyPolicyRepository: locator<PrivacyPolicyRepository>(),
      ),
    );
  }

  void _setupBiometricAuthentication() {
    locator.registerSingleton<LocalAuthentication>(
      LocalAuthentication(),
    );
    locator.registerSingleton<BiometricRepository>(
      BiometricRepository(
        localAuth: locator<LocalAuthentication>(),
        secureStorageWrapper: locator<SecureStorageWrapper>(),
        sharedPreferences: locator<SharedPreferences>(),
      ),
    );
    locator.registerSingleton<BiometricAuthenticationBloc>(
      BiometricAuthenticationBloc(
        biometricRepository: locator<BiometricRepository>(),
      ),
    );
  }

  static void setupFaq({
    required Locale appLocale,
  }) {
    locator.registerSingleton<FaqRemoteDataSource>(
      FaqRemoteConfigDataSource(
        remoteConfig: locator<FirebaseRemoteConfig>(),
        appLocale: appLocale,
      ),
    );
    locator.registerSingleton<FaqRepository>(
      FaqRepositoryImpl(
        faqRemoteDataSource: locator<FaqRemoteDataSource>(),
      ),
    );
    locator.registerFactory<FaqBloc>(
      () => FaqBloc(
        faqRepository: locator<FaqRepository>(),
      ),
    );
  }

  void _setupSite(AppDataSources selectedDataSource) {
    locator.registerSingleton<SiteRemoteDataSource>(
      selectedDataSource == AppDataSources.residentPortalMobileAPI
          ? SiteApiDataSource(
              dio: locator<NetworkWrapper>().dio,
            )
          : SiteRemoteConfigDataSource(
              remoteConfig: locator<FirebaseRemoteConfig>(),
            ),
    );
    locator.registerSingleton<SiteRepository>(
      SiteRepositoryImpl(
        siteRemoteDataSource: locator<SiteRemoteDataSource>(),
      ),
    );
    locator.registerSingleton<SiteBloc>(
      SiteBloc(
        siteRepository: locator<SiteRepository>(),
      ),
    );
  }

  void _setupAnnouncements() {
    locator.registerSingleton<AnnouncementsRemoteDataSource>(
      AnnouncementsApiDatasource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<AnnouncementsPreferencesDataSource>(
      AnnouncementsPrefsDatasource(
        preferences: locator<SharedPreferences>(),
      ),
    );
    locator.registerSingleton<AnnouncementsRepository>(
      AnnouncementsRepositoryImpl(
        announcementsRemoteDataSource: locator<AnnouncementsRemoteDataSource>(),
        announcementsPreferencesDataSource: locator<AnnouncementsPreferencesDataSource>(),
      ),
    );
    locator.registerSingleton<AnnouncementsBloc>(
      AnnouncementsBloc(
        announcementsRepository: locator<AnnouncementsRepository>(),
      ),
    );
  }

  void _setupSummary() {
    locator.registerSingleton<SummaryBloc>(
      SummaryBloc(
        announcementsRepository: locator<AnnouncementsRepository>(),
      ),
    );
  }
  void _setupDeleteAccount() {
    locator.registerFactory<DeleteAccountBloc>(
          () => DeleteAccountBloc(
        accountRepository: locator<DeleteAccountRepository>(),
      ),
    );
    locator.registerSingleton<DeleteRemoteDataSource>(
      DeleteApiDataSource(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<DeleteAccountRepository>(
      DeleteAccountsRepositoryImpl(
        deleteRemoteDataSource: locator<DeleteRemoteDataSource>(),
        errorParser: locator<ErrorParser>(),
      ),
    );
  }

  void _setupAcceptanceCriteria() {
    locator.registerSingleton<AcceptanceCriteriaRemoteDataSource>(
      AcceptanceCriteriaApi(
        dio: locator<NetworkWrapper>().dio,
      ),
    );
    locator.registerSingleton<AcceptanceCriteriaRepository>(
      AcceptanceCriteriaRepositoryImpl(
        acceptanceCriteriaRemoteDataSource: locator<AcceptanceCriteriaRemoteDataSource>(),
      ),
    );
    locator.registerFactory(
      () => DocumentAcceptanceBloc(
        locator<AcceptanceCriteriaRepository>(),
      ),
    );
  }
}

