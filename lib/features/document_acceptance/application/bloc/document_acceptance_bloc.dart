import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:resident_app/features/document_acceptance/common/params/update_acceptance_criteria_params.dart';
import 'package:resident_app/features/document_acceptance/domain/entities/acceptance_criteria_info.dart';
import 'package:resident_app/features/document_acceptance/domain/repositories/acceptance_criteria_repository.dart';

part 'document_acceptance_bloc.freezed.dart';

class DocumentAcceptanceBloc extends Bloc<DocumentAcceptanceEvent, DocumentAcceptanceState> {
  DocumentAcceptanceBloc(this._acceptanceCriteriaRepository) : super(_Initial()) {
    on<_AcceptDocumentsEvent>(_onAcceptDocumentsEvent);
  }

  final AcceptanceCriteriaRepository _acceptanceCriteriaRepository;

  _onAcceptDocumentsEvent(
    _AcceptDocumentsEvent event,
    Emitter<DocumentAcceptanceState> emit,
  ) async {
    emit(_Loading());

    final documentsOrFailure = await _acceptanceCriteriaRepository.getAcceptanceCriteria(
      event.residentUserId,
    );

    List<String> documentsIdsToAccept = [];

    final documents = documentsOrFailure.fold(
      (failure) => <AcceptanceCriteriaInfo>[],
      (docs) => docs,
    );

    if (documents.isEmpty) {
      emit(
        _Failure('Unexpected exception'),
      );
    }

    for (final document in documents) {
      document.legalDocumentType.maybeWhen(
        supportedBrowsersAndOperatingSystems: null,
        orElse: () {
          documentsIdsToAccept.add(document.legalDocumentId);
        },
      );
    }

    final acceptDocumentsOrFailure = await _acceptanceCriteriaRepository.updateAcceptanceCriteria(
      UpdateAcceptanceCriteriaParams(
        residentUserId: event.residentUserId,
        legalDocumentIds: documentsIdsToAccept,
      ),
    );

    acceptDocumentsOrFailure.fold(
      (failure) {
        emit(_Failure('Unexpected exception'));
      },
      (empty) {
        emit(_Success());
      },
    );
  }
}

@freezed
class DocumentAcceptanceEvent with _$DocumentAcceptanceEvent {
  const factory DocumentAcceptanceEvent.acceptDocumentsEvent(
    String residentUserId,
  ) = _AcceptDocumentsEvent;
}

@freezed
class DocumentAcceptanceState with _$DocumentAcceptanceState {
  const factory DocumentAcceptanceState.initial() = _Initial;
  const factory DocumentAcceptanceState.loading() = _Loading;
  const factory DocumentAcceptanceState.success() = _Success;
  const factory DocumentAcceptanceState.failure(String message) = _Failure;
}
