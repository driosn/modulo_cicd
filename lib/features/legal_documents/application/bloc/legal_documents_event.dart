part of 'legal_documents_bloc.dart';

@freezed
class LegalDocumentsEvent with _$LegalDocumentsEvent {
  const factory LegalDocumentsEvent.getLegalDocuments() =
      _GetLegalDocumentsEvent;
}
