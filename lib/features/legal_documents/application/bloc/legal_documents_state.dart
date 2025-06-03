part of 'legal_documents_bloc.dart';

enum LegalDocumentsStatus { initial, loading, loaded, failure }

@freezed
class LegalDocumentsState with _$LegalDocumentsState {
  const factory LegalDocumentsState({
    @Default(LegalDocumentsStatus.initial) LegalDocumentsStatus status,
    @Default(Document(title: '', subtitle: '', sections: []))
    Document legalDocuments,
  }) = _LegalDocumentsState;
}
