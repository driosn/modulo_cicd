import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/core/domain/document.dart';
import 'package:resident_app/features/legal_documents/domain/repositories/legal_documents_repository.dart';

part 'legal_documents_bloc.freezed.dart';
part 'legal_documents_event.dart';
part 'legal_documents_state.dart';

class LegalDocumentsBloc
    extends Bloc<LegalDocumentsEvent, LegalDocumentsState> {
  LegalDocumentsBloc({
    required LegalDocumentsRepository legalDocumentsRepository,
  })  : _legalDocumentsRepository = legalDocumentsRepository,
        super(const LegalDocumentsState()) {
    on<_GetLegalDocumentsEvent>(_getLegalDocuments);
  }

  final LegalDocumentsRepository _legalDocumentsRepository;

  void _getLegalDocuments(
    _GetLegalDocumentsEvent event,
    Emitter<LegalDocumentsState> emit,
  ) async {
    emit(state.copyWith(status: LegalDocumentsStatus.loading));
    final failureOrDocument = await _legalDocumentsRepository.getDocument();

    failureOrDocument.fold(
      (failure) {
        emit(
          state.copyWith(
            status: LegalDocumentsStatus.failure,
          ),
        );
      },
      (document) {
        emit(
          state.copyWith(
            legalDocuments: document,
            status: LegalDocumentsStatus.loaded,
          ),
        );
      },
    );
  }
}
