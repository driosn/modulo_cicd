import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/data/models/language_model.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/language_selection/common/language_preference_update_params.dart';
import 'package:resident_app/features/language_selection/domain/repositories/language_preference_repository.dart';

part 'language_preference_bloc.freezed.dart';
part 'language_preference_event.dart';
part 'language_preference_state.dart';

class LanguagePreferenceBloc
    extends Bloc<LanguagePreferenceEvent, LanguagePreferenceState> {
  LanguagePreferenceBloc({
    required LanguagePreferenceRepository languagePreferenceRepository,
  })  : _languagePreferenceRepository = languagePreferenceRepository,
        super(const LanguagePreferenceState()) {
    on<_SetSelectedLanguage>(_onSetSelectedLanguageEvent);
    on<_SetIsSelectedLanguage>(_onSetIsSelectedLanguage);
    on<_UpdateEvent>(_onUpdateEvent);
  }

  final LanguagePreferenceRepository _languagePreferenceRepository;

  void _onSetSelectedLanguageEvent(
    _SetSelectedLanguage event,
    Emitter<LanguagePreferenceState> emit,
  ) {
    emit(
      state.copyWith(
        selectedLanguage: event.selectedLanguage,
      ),
    );
  }

  void _onSetIsSelectedLanguage(
    _SetIsSelectedLanguage event,
    Emitter<LanguagePreferenceState> emit,
  ) {
    emit(
      state.copyWith(
        isLanguageSelected: true,
      ),
    );
  }

  void _onUpdateEvent(
    _UpdateEvent event,
    Emitter<LanguagePreferenceState> emit,
  ) async {
    emit(
      state.copyWith(
        updateStatus: const _Updating(),
      ),
    );

    LanguagePreferenceUpdateParams updateParams =
        LanguagePreferenceUpdateParams(
            residentUserId: event.residentUserId,
            notificationLanguageType: state.selectedLanguage.languageType);

    final failureOrSuccess =
        await _languagePreferenceRepository.update(updateParams);

    failureOrSuccess.fold((error) {
      emit(
        state.copyWith(
          updateStatus: _Failure(error),
        ),
      );
    }, (success) {
      emit(
        state.copyWith(
          updateStatus: const _Success(),
        ),
      );
    });

    emit(
      state.copyWith(
        updateStatus: const _Initial(),
      ),
    );
  }
}
