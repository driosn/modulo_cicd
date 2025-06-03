import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/shared/error/error.dart';
import 'package:resident_app/features/whitelabel/domain/entities/whitelabel.dart';
import 'package:resident_app/features/whitelabel/domain/repositories/whitelabel_repository.dart';

part 'whitelabel_bloc.freezed.dart';
part 'whitelabel_event.dart';
part 'whitelabel_state.dart';

class WhitelabelBloc extends Bloc<WhitelabelEvent, WhitelabelState> {
  WhitelabelBloc({
    required WhitelabelRepository whitelabelRepository,
  })  : _whitelabelRepository = whitelabelRepository,
        super(const WhitelabelState()) {
    on<_GetWhitelabelEvent>(_onGetWhitelabelEvent);
    on<_ResetWhitelabelEvent>(_onResetWhitelabelEvent);
    on<_SetupWhitelabelEvent>(_onSetupWhitelabelEvent);
  }

  final WhitelabelRepository _whitelabelRepository;

  void _onSetupWhitelabelEvent(_SetupWhitelabelEvent event, Emitter<WhitelabelState> emit) async {
    emit(
      state.copyWith(
        whitelabelStatus: _Loading(),
      ),
    );
    final whitelabelResponse = await _whitelabelRepository.setup(
      corePropertyId: event.corePropertyId,
      coreCompanyId: event.coreCompanyId,
    );
    whitelabelResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            whitelabelStatus: _Failure(failure),
            whitelabel: Whitelabel.empty,
          ),
        );
      },
      (whitelabel) {
        emit(
          state.copyWith(
            whitelabelStatus: _Success(),
            whitelabel: whitelabel,
          ),
        );
      },
    );
  }

  void _onGetWhitelabelEvent(
    _GetWhitelabelEvent event,
    Emitter<WhitelabelState> emit,
  ) async {
    emit(
      state.copyWith(
        whitelabelStatus: _Loading(),
      ),
    );
    final whitelabelResponse = await _whitelabelRepository.get(
      corePropertyId: event.corePropertyId,
      coreCompanyId: event.coreCompanyId,
    );
    whitelabelResponse.fold(
      (failure) {
        emit(
          state.copyWith(
            whitelabelStatus: _Failure(failure),
            whitelabel: Whitelabel.empty,
          ),
        );
      },
      (whitelabel) {
        emit(
          state.copyWith(
            whitelabelStatus: _Success(),
            whitelabel: whitelabel,
          ),
        );
      },
    );
  }

  void _onResetWhitelabelEvent(
    _ResetWhitelabelEvent event,
    Emitter<WhitelabelState> emit,
  ) async {
    await _whitelabelRepository.reset();
    emit(
      state.copyWith(
        whitelabelStatus: _Initial(),
        whitelabel: Whitelabel.empty,
      ),
    );
  }
}
