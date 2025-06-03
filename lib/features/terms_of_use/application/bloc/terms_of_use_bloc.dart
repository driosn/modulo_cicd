import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/domain/document.dart';
import 'package:resident_app/features/terms_of_use/domain/repositories/terms_of_use_repository.dart';

part 'terms_of_use_bloc.freezed.dart';
part 'terms_of_use_event.dart';
part 'terms_of_use_state.dart';

class TermsOfUseBloc extends Bloc<TermsOfUseEvent, TermsOfUseState> {
  TermsOfUseBloc({
    required TermsOfUseRepository termsOfUseRepository,
  })  : _termsOfUseRepository = termsOfUseRepository,
        super(const TermsOfUseState()) {
    on<_GetTermsOfUseEvent>(_getTermsOfUse);
  }

  final TermsOfUseRepository _termsOfUseRepository;

  void _getTermsOfUse(
    _GetTermsOfUseEvent event,
    Emitter<TermsOfUseState> emit,
  ) async {
    emit(state.copyWith(status: TermsOfUseStatus.loading));
    final failureOrDocument = await _termsOfUseRepository.getDocument();

    failureOrDocument.fold(
      (failure) {
        emit(
          state.copyWith(
            status: TermsOfUseStatus.failure,
          ),
        );
      },
      (document) {
        emit(
          state.copyWith(
            termsOfUse: document,
            status: TermsOfUseStatus.loaded,
          ),
        );
      },
    );
  }
}
