import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/data/models/models.dart';
import 'package:resident_app/core/domain/language_repository.dart';
import 'package:resident_app/core/shared/config/scaler_config.dart';
import 'package:resident_app/core/shared/locator/locator.dart';
import 'package:resident_app/environment.dart';
import 'package:resident_app/features/auth/sign_in/application/bloc/sign_in_bloc.dart';

part 'user_preferences_bloc.freezed.dart';
part 'user_preferences_event.dart';
part 'user_preferences_state.dart';

class UserPreferencesBloc extends Bloc<UserPreferencesEvent, UserPreferencesState> {
  //TODO: refactor logic for default assignation in order to about bool comparation
  final String localeName = PlatformDispatcher.instance.locale.toString().split("_")[0] == "es" ? "es_US" : "en_US";
  UserPreferencesBloc({
    required LanguageRepository languageRepository,
  })  : _languageRepository = languageRepository,
        super(const UserPreferencesState()) {
    on<UserPreferencesEventLoadLanguage>(_onUserPreferencesEventLoadLanguage);
    on<UserPreferencesEventSetLanguage>(_onUserPreferencesEventSetLanguage);
    on<UserPreferencesEventRestart>(_onUserPreferencesEventRestart);
  }

  final LanguageRepository _languageRepository;

  void _onUserPreferencesEventLoadLanguage(
    UserPreferencesEventLoadLanguage event,
    Emitter<UserPreferencesState> emit,
  ) async {
    Language? language = _languageRepository.getSavedLanguage();
    if (language != null) {
      emit(
        state.copyWith(
          languageSelectionStatus: LanguageSelectionStatus.loaded,
          selectedLanguage: language,
        ),
      );
    } else {
      emit(
        state.copyWith(
          languageSelectionStatus: LanguageSelectionStatus.loaded,
          selectedLanguage: Language.fromLocaleName(localeName),
        ),
      );
    }
  }

  void _onUserPreferencesEventSetLanguage(
    UserPreferencesEventSetLanguage event,
    Emitter<UserPreferencesState> emit,
  ) async {
    if (event.setStorageLanguage) {
      await _languageRepository.saveLanguage(event.selectedLanguage.toString());
    }
    emit(
      state.copyWith(
        languageSelectionStatus: LanguageSelectionStatus.languageSelected,
        selectedLanguage: event.selectedLanguage,
      ),
    );
    event.onLanguageSet();
  }

  void _onUserPreferencesEventRestart(
    UserPreferencesEventRestart event,
    Emitter<UserPreferencesState> emit,
  ) async {
    late Environment flavorEnvironment;
    switch (appFlavor) {
      case "prod":
        flavorEnvironment = Environment.prod();
        break;
      case "dev":
        flavorEnvironment = Environment.dev();
        break;
      case "qa":
        flavorEnvironment = Environment.qa();
        break;
      case "demo":
        flavorEnvironment = Environment.dev();
        break;
      default:
        flavorEnvironment = Environment.dev();
    }
    Language? language = _languageRepository.getSavedLanguage();

    final serviceLocator = ServiceLocator();
    await serviceLocator.setupLocator(
      scalerConfig: ScalerConfig.init(
        PlatformDispatcher.instance.textScaleFactor,
      ),
      appLanguage: language,
      env: flavorEnvironment,
    );

    locator<SignInBloc>().add(const SignInEvent.signOut());
    emit(
      state.copyWith(
        languageSelectionStatus: LanguageSelectionStatus.languageSelected,
        selectedLanguage: Language.fromLocaleName(localeName),
      ),
    );
  }
}
